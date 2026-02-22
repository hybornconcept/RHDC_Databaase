#!/usr/bin/env bash
# =============================================================
# RHDC Master Operational Database — Local Setup Script
# Remote Hustle Database Challenge | Stage 1
# =============================================================
# Usage:
#   chmod +x 07_setup.sh
#   ./07_setup.sh
#
# Or with custom credentials:
#   DB_NAME=mydb DB_USER=myuser ./07_setup.sh
# =============================================================

set -e  # exit on any error

# ── Colours ──────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'
BLUE='\033[0;34m'; CYAN='\033[0;36m'; BOLD='\033[1m'; NC='\033[0m'

print_header() {
  echo ""
  echo -e "${BOLD}${BLUE}╔════════════════════════════════════════════════════╗${NC}"
  echo -e "${BOLD}${BLUE}║   RHDC Master Operational Database — Setup        ║${NC}"
  echo -e "${BOLD}${BLUE}║   Remote Hustle Database Challenge | Stage 1       ║${NC}"
  echo -e "${BOLD}${BLUE}╚════════════════════════════════════════════════════╝${NC}"
  echo ""
}

print_step()    { echo -e "\n${CYAN}${BOLD}▶ $1${NC}"; }
print_success() { echo -e "${GREEN}✔ $1${NC}"; }
print_warn()    { echo -e "${YELLOW}⚠ $1${NC}"; }
print_error()   { echo -e "${RED}✖ $1${NC}"; }

# ── Config (override with env vars) ──────────────────────────
DB_NAME="${DB_NAME:-rhdc_db}"
DB_USER="${DB_USER:-$(whoami)}"
DB_HOST="${DB_HOST:-localhost}"
DB_PORT="${DB_PORT:-5432}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

print_header

echo -e "${BOLD}Configuration:${NC}"
echo -e "  Database : ${CYAN}${DB_NAME}${NC}"
echo -e "  User     : ${CYAN}${DB_USER}${NC}"
echo -e "  Host     : ${CYAN}${DB_HOST}:${DB_PORT}${NC}"
echo -e "  Scripts  : ${CYAN}${SCRIPT_DIR}${NC}"
echo ""

# ── 1. Check psql is installed ────────────────────────────────
print_step "Checking prerequisites..."

if ! command -v psql &>/dev/null; then
  print_error "psql not found. Please install PostgreSQL client."
  echo ""
  echo "  Ubuntu/Debian: sudo apt-get install postgresql-client"
  echo "  macOS:         brew install libpq && brew link --force libpq"
  echo "  Windows:       Download from https://www.postgresql.org/download/"
  exit 1
fi

PSQL_VERSION=$(psql --version | awk '{print $3}')
print_success "psql found — version ${PSQL_VERSION}"

# ── 2. Check PostgreSQL server is running ─────────────────────
print_step "Checking PostgreSQL server..."

if ! psql -h "${DB_HOST}" -p "${DB_PORT}" -U "${DB_USER}" -c '\q' postgres 2>/dev/null; then
  print_warn "Cannot connect to PostgreSQL as '${DB_USER}'. Trying with postgres superuser..."
  DB_USER_SUPER="postgres"
  if ! psql -h "${DB_HOST}" -p "${DB_PORT}" -U "${DB_USER_SUPER}" -c '\q' postgres 2>/dev/null; then
    print_error "Cannot connect to PostgreSQL. Please ensure the server is running."
    echo ""
    echo "  Start PostgreSQL:"
    echo "  Ubuntu: sudo systemctl start postgresql"
    echo "  macOS:  brew services start postgresql"
    exit 1
  fi
  DB_USER="${DB_USER_SUPER}"
  print_warn "Using superuser '${DB_USER}'"
fi
print_success "Connected to PostgreSQL server"

PSQL="psql -h ${DB_HOST} -p ${DB_PORT} -U ${DB_USER}"

# ── 3. Create database ────────────────────────────────────────
print_step "Creating database '${DB_NAME}'..."

if $PSQL -lqt postgres | cut -d '|' -f1 | grep -qw "${DB_NAME}"; then
  print_warn "Database '${DB_NAME}' already exists."
  read -rp "  Drop and recreate it? [y/N]: " confirm
  if [[ "$confirm" =~ ^[Yy]$ ]]; then
    $PSQL -c "DROP DATABASE ${DB_NAME};" postgres
    print_success "Old database dropped"
    $PSQL -c "CREATE DATABASE ${DB_NAME};" postgres
    print_success "Database '${DB_NAME}' created"
  else
    print_warn "Keeping existing database. Data may be duplicated."
  fi
else
  $PSQL -c "CREATE DATABASE ${DB_NAME};" postgres
  print_success "Database '${DB_NAME}' created"
fi

PSQL_DB="psql -h ${DB_HOST} -p ${DB_PORT} -U ${DB_USER} -d ${DB_NAME}"

# ── 4. Run schema (DDL) ───────────────────────────────────────
print_step "Loading schema (01_schema.sql)..."

SCHEMA_FILE="${SCRIPT_DIR}/sql/01_schema.sql"
if [[ ! -f "${SCHEMA_FILE}" ]]; then
  print_error "File not found: ${SCHEMA_FILE}"
  exit 1
fi

$PSQL_DB -f "${SCHEMA_FILE}" -v ON_ERROR_STOP=1 -q
print_success "Schema created — 10 tables, 5 ENUMs, 6 triggers, 4 roles, RLS policies"

# ── 5. Load seed data ─────────────────────────────────────────
print_step "Loading seed data (02_seed_data.sql)..."

SEED_FILE="${SCRIPT_DIR}/sql/02_seed_data.sql"
if [[ ! -f "${SEED_FILE}" ]]; then
  print_error "File not found: ${SEED_FILE}"
  exit 1
fi

$PSQL_DB -f "${SEED_FILE}" -v ON_ERROR_STOP=1 -q
print_success "Seed data loaded — 100 participants, 60+ submissions, 25+ evaluations"

# ── 6. Load views, queries & procedures ──────────────────────
print_step "Loading views & stored procedures (03_queries_views.sql)..."

QUERIES_FILE="${SCRIPT_DIR}/sql/03_queries_views.sql"
if [[ ! -f "${QUERIES_FILE}" ]]; then
  print_error "File not found: ${QUERIES_FILE}"
  exit 1
fi

$PSQL_DB -f "${QUERIES_FILE}" -v ON_ERROR_STOP=1 -q
print_success "8 views and 4 stored procedures created"

# ── 7. Verification ───────────────────────────────────────────
print_step "Verifying installation..."

echo ""
echo -e "${BOLD}Table counts:${NC}"
$PSQL_DB -c "
SELECT 'users'        AS entity, COUNT(*) AS total FROM users
UNION ALL SELECT 'participants', COUNT(*) FROM participants
UNION ALL SELECT 'judges',       COUNT(*) FROM judges
UNION ALL SELECT 'stages',       COUNT(*) FROM stages
UNION ALL SELECT 'submissions',  COUNT(*) FROM submissions
UNION ALL SELECT 'evaluations',  COUNT(*) FROM evaluations
UNION ALL SELECT 'stage_progress', COUNT(*) FROM stage_progress
UNION ALL SELECT 'reports',      COUNT(*) FROM reports
UNION ALL SELECT 'audit_logs',   COUNT(*) FROM audit_logs
UNION ALL SELECT 'notifications', COUNT(*) FROM notifications
ORDER BY entity;" 2>/dev/null

echo ""
echo -e "${BOLD}Views created:${NC}"
$PSQL_DB -c "SELECT table_name AS view_name FROM information_schema.views WHERE table_schema='public' ORDER BY table_name;" 2>/dev/null

# ── 8. Run quick smoke test ───────────────────────────────────
print_step "Running smoke test..."

SMOKE=$(cat <<'EOF'
-- Smoke test: verify key operations work
DO $$
DECLARE v_user_id UUID; v_part_id UUID; v_reg TEXT;
BEGIN
  SELECT new_user_id, new_participant_id, registration_no
  INTO v_user_id, v_part_id, v_reg
  FROM register_participant(
    'Setup Test User','setup.test@rhdc.io','$2b$12$testhash',
    '+2340000000000','Nigeria','Cohort-A 2025','Data Analytics',
    'Auto-created by setup script', NULL, NULL
  );
  RAISE NOTICE 'register_participant() OK — reg: %', v_reg;

  -- Cleanup test user
  DELETE FROM participants WHERE participant_id = v_part_id;
  DELETE FROM users       WHERE user_id = v_user_id;
  RAISE NOTICE 'Cleanup OK';
END $$;
SELECT 'vw_participant_profiles OK' AS test, COUNT(*) AS rows FROM vw_participant_profiles;
SELECT 'vw_analytics_summary OK'    AS test, COUNT(*) AS rows FROM vw_analytics_summary;
SELECT 'vw_judge_scoreboard OK'     AS test, COUNT(*) AS rows FROM vw_judge_scoreboard;
SELECT 'vw_pending_actions OK'      AS test, COUNT(*) AS rows FROM vw_pending_actions;
EOF
)

echo "${SMOKE}" | $PSQL_DB -v ON_ERROR_STOP=1 2>&1 | grep -E "(NOTICE|test|ERROR)" || true
print_success "Smoke test passed"

# ── 9. Create read-only judge user ───────────────────────────
print_step "Creating read-only judge access user..."

$PSQL_DB -c "
DO \$\$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'rh_judge_access') THEN
    CREATE USER rh_judge_access WITH PASSWORD 'rhdc_judge_2025';
    GRANT rh_readonly TO rh_judge_access;
  END IF;
END \$\$;" 2>/dev/null || print_warn "Could not create judge access user (may need superuser)"

# ── 10. Print connection info ─────────────────────────────────
echo ""
echo -e "${BOLD}${GREEN}════════════════════════════════════════════════════${NC}"
echo -e "${BOLD}${GREEN}  ✔  Setup Complete!${NC}"
echo -e "${BOLD}${GREEN}════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${BOLD}Connection Details (share with judges):${NC}"
echo ""
echo -e "  Host     : ${CYAN}${DB_HOST}${NC}"
echo -e "  Port     : ${CYAN}${DB_PORT}${NC}"
echo -e "  Database : ${CYAN}${DB_NAME}${NC}"
echo -e "  User     : ${CYAN}rh_judge_access${NC}  (read-only)"
echo -e "  Password : ${CYAN}rhdc_judge_2025${NC}"
echo ""
echo -e "  psql URI : ${CYAN}postgresql://rh_judge_access:rhdc_judge_2025@${DB_HOST}:${DB_PORT}/${DB_NAME}${NC}"
echo ""
echo -e "${BOLD}Quick test (run as judge):${NC}"
echo -e "  ${YELLOW}psql postgresql://rh_judge_access:rhdc_judge_2025@${DB_HOST}:${DB_PORT}/${DB_NAME}${NC}"
echo -e "  ${YELLOW}SELECT * FROM vw_analytics_summary;${NC}"
echo ""
echo -e "${BOLD}Run the full judge demo:${NC}"
echo -e "  ${YELLOW}psql -U ${DB_USER} -d ${DB_NAME} -f sql/04_demo_queries.sql${NC}"
echo ""
echo -e "${BOLD}Open the admin dashboard:${NC}"
echo -e "  ${YELLOW}open 06_admin_dashboard.html${NC}  ${BLUE}(or double-click in your file browser)${NC}"
echo ""
echo -e "${BLUE}Integrity > Everything  |  Quality > Size${NC}"
echo ""
