# RHDC Stage 1 — Deployment Guide
## Deploy Your PostgreSQL Database to the Cloud in Under 10 Minutes

---

## Option A: Deploy on Supabase (Recommended — Free Tier)

Supabase is the preferred platform because it gives you:
- Hosted PostgreSQL 15
- Built-in Row-Level Security (RLS) UI
- Auto-generated REST API (bonus for judges to explore)
- SQL Editor in the browser — no client needed

### Step 1: Create a Supabase Project

1. Go to [https://supabase.com](https://supabase.com) and sign in (or sign up free)
2. Click **New Project**
3. Fill in:
   - **Project name:** `rhdc-master-db`
   - **Database password:** Choose a strong password (rhdcAdmin2026)— save it, you'll need it
   - **Region:** Choose the region closest to Nigeria (e.g., `eu-west-2 London` or `us-east-1`)
4. Click **Create new project** — wait ~2 minutes for provisioning

### Step 2: Open the SQL Editor

1. In the left sidebar, click **SQL Editor**
2. Click **New query**

### Step 3: Run the Schema (DDL)

1. Open `01_schema.sql` from this repository
2. Copy the **entire file contents**
3. Paste into the Supabase SQL Editor
4. Click **Run** (or press `Ctrl+Enter`)
5. You should see: `Success. No rows returned` — all 10 tables and objects created

### Step 4: Load Seed Data

1. Click **New query** to open a fresh editor tab
2. Open `02_seed_data.sql`, copy all contents
3. Paste and click **Run**
4. You should see: `Success. No rows returned`
5. Verify: run `SELECT COUNT(*) FROM participants;` → should return `100`

### Step 5: Load Views, Queries & Stored Procedures

1. Click **New query** again
2. Open `03_queries_views.sql`, copy all contents
3. Paste and click **Run**
4. Verify views exist:
   ```sql
   SELECT table_name FROM information_schema.views WHERE table_schema = 'public';
   ```
   Should return 8 rows.

### Step 6: Run the Demo Script

1. Open `04_demo_queries.sql`
2. Run each section one at a time in the SQL Editor
3. All sections should return data — the database is fully operational

### Step 7: Get Your Connection Credentials for Judges

In Supabase:
1. Go to **Project Settings** → **Database**
2. Scroll to **Connection string** → copy the `URI` format:
   ```
   postgresql://postgres:[YOUR-PASSWORD]@db.pphwmzoeszrjffpdxucv.supabase.co:5432/postgres
   ```
3. Also collect:
   - **Host:** `db.[ref].supabase.co`
   - **Port:** `5432`
   - **Database:** `postgres`
   - **User:** `postgres`
   - **Password:** the one you set in Step 1

4. Share these with judges along with a **read-only role** (optional but recommended):
   ```sql
   CREATE USER judge_reader WITH PASSWORD 'rhdc_judge_2025';
   GRANT rh_readonly TO judge_reader;
   ```

---

## Connecting with SQL Clients

### DBeaver (recommended — free)
1. Download at [dbeaver.io](https://dbeaver.io)
2. New Connection → PostgreSQL
3. Fill in Host, Port, Database, Username, Password
4. Test Connection → Finish

### TablePlus (macOS/Windows)
1. New Connection → PostgreSQL
2. Paste the connection URI directly
3. Connect

### psql (command line)
```bash
psql "postgresql://USER:PASSWORD@HOST:PORT/DATABASE?sslmode=require"

# Once connected, run the demo:
\i 04_demo_queries.sql
```

---

## Quick Verification Checklist

After deployment, run these to confirm everything is working:

```sql
-- 1. All 10 tables present
SELECT COUNT(*) FROM information_schema.tables
WHERE table_schema = 'public' AND table_type = 'BASE TABLE';
-- Expected: 10

-- 2. All 8 views present
SELECT COUNT(*) FROM information_schema.views WHERE table_schema = 'public';
-- Expected: 8

-- 3. Seed data loaded
SELECT COUNT(*) FROM participants;    -- Expected: 100
SELECT COUNT(*) FROM submissions;     -- Expected: 60+
SELECT COUNT(*) FROM evaluations;     -- Expected: 25+

-- 4. Stored procedures loaded
SELECT COUNT(*) FROM information_schema.routines
WHERE routine_schema = 'public' AND routine_type = 'FUNCTION';
-- Expected: 6+

-- 5. Triggers active
SELECT COUNT(*) FROM information_schema.triggers WHERE trigger_schema = 'public';
-- Expected: 6+

-- 6. Analytics view works
SELECT * FROM vw_analytics_summary;

-- 7. Full demo
-- Run 04_demo_queries.sql section by section
```

---

## Submission Credentials Template

Include this in your submission email:

```
Project Name  : RHDC Master Operational Database
Submitted By  : Achara Franklyn | acharafranklyn@gmail.com
Platform      : Supabase
Host          : db.pphwmzoeszrjffpdxucv.supabase.co
Port          : 5432
Database      : postgres
Username      : rh_judge_access (read-only)
Password      : [your password]
Full URI      : postgresql://postgres:[YOUR-PASSWORD]@db.pphwmzoeszrjffpdxucv.supabase.co:5432/postgres

GitHub Repo   : https://github.com/hybornconcept/RHDC_Databaase.git
Demo Video    : https://[link-to-video]

Files in repo:
  01_schema.sql          — DDL: all tables, types, triggers, RLS, roles
  02_seed_data.sql       — 100 participants, 60+ submissions, 25+ evaluations
  03_queries_views.sql   — 8 views, 10 queries, 4 stored procedures
  04_demo_queries.sql    — Full end-to-end judge demo script
  erd.svg                — Entity Relationship Diagram
  README.md              — Full setup and usage guide
  project_description.md — 1-page project overview
  deployment_guide.md    — This file
```

---

*Good luck! Integrity > Everything | Quality > Size*
