# RHDC Stage 1 — Project Description

**Project Name:** RHDC Master Operational Database  
**Submitted By:** Achara Franklyn | acharafranklyn@gmail.com  
**Tech Stack:** PostgreSQL 15 · PL/pgSQL · Supabase  
**Stage:** 1 — Solo Round

---

## Problem Solved

Remote Hustle currently manages its challenge operations manually — tracking participants via spreadsheets, scoring via ad hoc forms, and monitoring submissions without a central system. This leads to:

- **Scoring delays** when judges have no unified platform to record evaluations
- **Submission chaos** with no structured status workflow or duplicate protection
- **Zero audit trail**, making dispute resolution nearly impossible
- **No live analytics**, forcing admins to generate reports manually

This database solves all of the above immediately.

---

## Target Users

| User | How They Use the DB |
|------|---------------------|
| **RH Admins** | Manage stages, generate reports, monitor all activity |
| **Judges** | Score submissions, view participant profiles, submit feedback |
| **Participants** | Register, submit work, track scores and stage progress |
| **Support Staff** | Monitor pending actions, resolve submission issues |

---

## Key Features

**10 Core Tables:** `users`, `participants`, `judges`, `stages`, `submissions`, `evaluations`, `stage_progress`, `reports`, `audit_logs`, `notifications` — all properly normalized with foreign keys, constraints, and indexes.

**8 Ready-to-Run Views:** Immediate insights for participant profiles, submission tracking, judge scoreboards, stage leaderboards, analytics summaries, pending operations queues, audit trails, and judge activity monitoring.

**4 Stored Procedures:** `register_participant()`, `submit_task()`, `record_evaluation()`, `generate_stage_report()` — execute full workflows in a single SQL call.

**Security:** Role-Based Access Control (4 roles: admin, judge, participant, support) + Row-Level Security on submissions, evaluations, and notifications. Participants can only see their own data.

**Automation:** 6 triggers handle automatic timestamp updates and generate a full audit log of every INSERT, UPDATE, and DELETE on critical tables — zero manual logging required.

**Seed Data:** 107 users (100 participants, 5 judges, 1 admin, 1 support), 4 stages, 60+ submissions, 25+ evaluations, 5 reports, 20 notifications — all realistic and immediately testable.

---

## How Remote Hustle Can Use It Today

1. **Deploy** the scripts in the `sql/` folder to Supabase (free tier) in under 5 minutes
2. **Admins** open the SQL editor and run `SELECT * FROM vw_analytics_summary` for an instant dashboard
3. **Judges** connect and run `SELECT * FROM vw_pending_actions` to see what needs evaluation
4. **Operations** call `register_participant(...)` to onboard new participants via API or directly
5. **Automation** — every submission, score, and status change is automatically logged; zero manual effort

---

## Hosting Platform

**Platform:** [Supabase](https://supabase.com) — Free tier, built-in RLS support, REST API auto-generated  
**Connection String:** `postgresql://postgres:[YOUR-PASSWORD]@db.pphwmzoeszrjffpdxucv.supabase.co:5432/postgres`  
**GitHub:** [RHDC_Databaase](https://github.com/hybornconcept/RHDC_Databaase.git)

---

*"Execution and usability matter more than flashy dashboards." — RHDC Brief*
