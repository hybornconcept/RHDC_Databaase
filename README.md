# 🚀 RHDC Master Operational Database
### Remote Hustle Database Challenge — Stage 1 Submission

> **Stack:** PostgreSQL | **Hosting:** Supabase  
> **Theme:** Data Modeling · Data Integrity · Operational Efficiency

---

## 📌 Project Overview

This repository contains the complete Master Operational Database for the **Remote Hustle Database Challenge (RHDC)**. It is designed to immediately replace manual tracking systems with a live, cloud-hosted, fully relational PostgreSQL database that RH admins, judges, and support staff can use right now.

**Problems Solved:**
- Manual participant tracking → automated registration with unique IDs
- Scoring delays → real-time evaluation tables with auto-computed averages
- Messy submissions → structured submission workflow with status tracking
- No audit trail → full immutable audit logging with JSONB change history
- No analytics → ready-to-run views and stored procedures for reports

---

## 🗄️ Database Schema Overview

### Tables (10 Core Tables)

| # | Table | Purpose |
|---|-------|---------|
| 1 | `users` | Central identity for all platform users |
| 2 | `participants` | Competitor profiles and registration |
| 3 | `judges` | Judge profiles linked to users |
| 4 | `stages` | Competition rounds with dates & scoring |
| 5 | `submissions` | Task submissions per participant per stage |
| 6 | `evaluations` | Judge scores with 4-dimension breakdown |
| 7 | `stage_progress` | Qualification and advancement tracking |
| 8 | `reports` | Admin-generated analytics (stored as JSONB) |
| 9 | `audit_logs` | Immutable system-wide audit trail |
| 10 | `notifications` | In-app notifications for all users |

### Custom Types (ENUMs)
- `user_role`: admin, judge, participant, support
- `submission_status`: pending, under_review, accepted, rejected, flagged
- `stage_status`: upcoming, active, completed, cancelled
- `participant_status`: registered, active, disqualified, withdrawn, completed
- `audit_action`: INSERT, UPDATE, DELETE, LOGIN, LOGOUT, VIEW

---

## ⚡ Quick Start — Connect to the Live Database

### Option A: Supabase (Recommended)
1. Open [Supabase Dashboard](https://supabase.com)
2. Create a new project or use the shared credentials below
3. Navigate to **SQL Editor**
4. Run scripts in order: `01_schema.sql` → `02_seed_data.sql` → `03_queries_views.sql`

**Connection String:**
```
postgresql://postgres:[YOUR-PASSWORD]@db.pphwmzoeszrjffpdxucv.supabase.co:5432/postgres
```

### Option B: Local PostgreSQL (Development)
```bash
# Create database
createdb rhdc_db

# Run schema
psql -d rhdc_db -f sql/01_schema.sql

# Load seed data
psql -d rhdc_db -f sql/02_seed_data.sql

# Load views and queries
psql -d rhdc_db -f sql/03_queries_views.sql
```

---

## 🌱 Seed Data Summary

| Entity | Count |
|--------|-------|
| Users (total) | 107 |
| Participants | 100 |
| Judges | 5 |
| Admins | 1 |
| Support | 1 |
| Stages | 4 |
| Submissions | 60+ |
| Evaluations | 25+ |
| Stage Progress Records | 80 |
| Reports | 5 |
| Notifications | 20 |

---

## 📋 Views Available (8 Operational Views)

| View | Description |
|------|-------------|
| `vw_participant_profiles` | Full participant + user info joined |
| `vw_submission_tracker` | Real-time submission status dashboard |
| `vw_judge_scoreboard` | Aggregated scores per submission |
| `vw_stage_leaderboard` | Ranked participants per stage |
| `vw_analytics_summary` | KPIs and stats per stage |
| `vw_audit_trail` | Human-readable audit history |
| `vw_judge_activity` | Judge workload and scoring stats |
| `vw_pending_actions` | Operations queue — what needs attention |

---

## 🔧 Stored Procedures

| Function | Purpose |
|----------|---------|
| `register_participant(...)` | Registers a user + participant, sends notification |
| `submit_task(...)` | Validates and records a stage submission |
| `record_evaluation(...)` | Saves judge scores, auto-updates submission status |
| `generate_stage_report(...)` | Creates a JSONB analytics report for a stage |

### Example Usage

```sql
-- Register a new participant
SELECT * FROM register_participant(
    'Ada Okafor',
    'ada.okafor@example.com',
    '$2b$12$hashedpassword',
    '+2348123456789',
    'Nigeria',
    'Cohort-A 2025',
    'Data Analytics',
    'Aspiring data engineer passionate about databases.',
    'https://github.com/adaokafor',
    'https://linkedin.com/in/ada-okafor'
);

-- Submit a task for Stage 1
SELECT submit_task(
    'PARTICIPANT_UUID_HERE',
    1,
    'My RHDC Stage 1 Database',
    'A complete PostgreSQL operational database with 10 tables...',
    'https://drive.google.com/my-submission',
    'https://github.com/me/rhdc-stage1'
);

-- Judge records an evaluation
SELECT record_evaluation(
    'SUBMISSION_UUID_HERE',
    'JUDGE_UUID_HERE',
    88.5,   -- technical_score
    92.0,   -- creativity_score
    85.0,   -- usability_score
    90.0,   -- presentation_score
    'Excellent schema design with proper normalization and indexing.',
    TRUE    -- is_final
);
```

---

## 🔒 Security Features

### Database Roles
| Role | Permissions |
|------|------------|
| `rh_admin` | Full access to all tables and sequences |
| `rh_judge` | Read all tables + write evaluations only |
| `rh_participant` | Read own data + write own submissions |
| `rh_readonly` | Read-only access (for support/reporting) |

### Row-Level Security (RLS)
- **Submissions**: Participants can only read/write their own submissions
- **Evaluations**: Judges can only modify their own evaluations
- **Notifications**: Users can only access their own notifications

### Automatic Triggers
- `update_timestamp()` — auto-updates `updated_at` on all mutable tables
- `audit_submissions()` — logs all INSERT/UPDATE/DELETE on submissions
- `audit_evaluations()` — logs all evaluation changes

---

## 📊 Sample Queries to Run Immediately

```sql
-- 1. View all participants
SELECT * FROM vw_participant_profiles LIMIT 20;

-- 2. Check submission status for Stage 1
SELECT * FROM vw_submission_tracker WHERE stage_number = 1;

-- 3. See the current leaderboard
SELECT * FROM vw_stage_leaderboard WHERE stage_name = 'Stage 1' ORDER BY rank_in_stage;

-- 4. Check what needs attention right now
SELECT * FROM vw_pending_actions;

-- 5. Overall analytics dashboard
SELECT * FROM vw_analytics_summary;

-- 6. View recent audit activity
SELECT * FROM vw_audit_trail LIMIT 20;

-- 7. Judge scoring overview
SELECT * FROM vw_judge_activity;

-- 8. Generate a Stage 1 report (replace UUID with admin user_id from seed data)
SELECT generate_stage_report(1, (SELECT user_id FROM users WHERE role = 'admin' LIMIT 1));
```

---

## 📸 Database Snapshots

The screenshots below are taken from the live admin dashboard (`06_admin_dashboard.html`) and show real data loaded from the seed files.

### Overview
![RHDC Admin Dashboard — Overview](Overview.png)

### Participants
![RHDC Admin Dashboard — Participants](Participants.png)

### Submissions
![RHDC Admin Dashboard — Submissions](submissions.png)

---

## 📁 Repository Structure

```
rhdc/
├── sql/
│   ├── 01_schema.sql         # DDL: All tables, types, constraints, triggers, RLS
│   ├── 02_seed_data.sql      # 100 participants, 60 submissions, 25 evaluations, etc.
│   └── 03_queries_views.sql  # 8+ views, 10+ queries, 4 stored procedures
├── diagrams/
│   └── erd.svg               # Entity Relationship Diagram
├── docs/
│   └── project_description.md # 1-page project summary
└── README.md                 # This file
```

---

## 🧰 Tech Stack

| Component | Technology |
|-----------|-----------|
| Database Engine | PostgreSQL 15+ |
| Cloud Hosting | Supabase |
| Schema Type | Fully Relational with JSONB |
| Security | RBAC + Row-Level Security |
| Automation | PL/pgSQL Triggers & Stored Procedures |
| Diagram | SVG (ERD) |

---

## 👤 Author

**Achara Franklyn**  
Email: acharafranklyn@gmail.com  
GitHub: [github.com/hybornconcept](https://github.com/hybornconcept/RHDC_Databaase.git)

---

*Built for the Remote Hustle Database Challenge (RHDC) Stage 1*  
*Integrity > Everything | Quality > Size*
