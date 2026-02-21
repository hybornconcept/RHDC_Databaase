-- ============================================================
-- RHDC JUDGE DEMO SCRIPT
-- Remote Hustle Database Challenge — Stage 1
-- ============================================================
-- PURPOSE : Lets judges verify and test the full database
--           end-to-end in one session.
-- RUN IN  : Supabase SQL Editor | psql | DBeaver | TablePlus
-- ORDER   : Execute each numbered section top to bottom.
-- ============================================================

-- ============================================================
-- SECTION 1 : VERIFY ALL 10 TABLES EXIST
-- ============================================================

SELECT
    table_name,
    (SELECT COUNT(*)
     FROM information_schema.columns c
     WHERE c.table_name  = t.table_name
       AND c.table_schema = 'public') AS column_count
FROM information_schema.tables t
WHERE table_schema = 'public'
  AND table_type   = 'BASE TABLE'
ORDER BY table_name;

-- ============================================================
-- SECTION 2 : VERIFY ALL 8 VIEWS EXIST
-- ============================================================

SELECT table_name AS view_name
FROM information_schema.views
WHERE table_schema = 'public'
ORDER BY table_name;

-- ============================================================
-- SECTION 3 : VERIFY ALL STORED PROCEDURES EXIST
-- ============================================================

SELECT
    routine_name,
    routine_type,
    data_type AS return_type
FROM information_schema.routines
WHERE routine_schema = 'public'
  AND routine_type   = 'FUNCTION'
ORDER BY routine_name;

-- ============================================================
-- SECTION 4 : SEED DATA COUNTS
-- ============================================================

SELECT 'users'           AS entity, COUNT(*) AS total FROM users
UNION ALL
SELECT 'participants',               COUNT(*) FROM participants
UNION ALL
SELECT 'judges',                     COUNT(*) FROM judges
UNION ALL
SELECT 'stages',                     COUNT(*) FROM stages
UNION ALL
SELECT 'submissions',                COUNT(*) FROM submissions
UNION ALL
SELECT 'evaluations',                COUNT(*) FROM evaluations
UNION ALL
SELECT 'stage_progress',             COUNT(*) FROM stage_progress
UNION ALL
SELECT 'reports',                    COUNT(*) FROM reports
UNION ALL
SELECT 'audit_logs',                 COUNT(*) FROM audit_logs
UNION ALL
SELECT 'notifications',              COUNT(*) FROM notifications
ORDER BY entity;

-- ============================================================
-- SECTION 5 : LIVE DEMO — REGISTER A NEW PARTICIPANT
-- ============================================================

SELECT * FROM register_participant(
    'Judge Demo Participant',
    'demo.judge.test@rhdc.io',
    '$2b$12$demohashdemohashdemo00',
    '+2348099990001',
    'Nigeria',
    'Cohort-A 2025',
    'Data Analytics',
    'Created during live judge evaluation of Stage 1 submission.',
    'https://github.com/demo-judge-test',
    'https://linkedin.com/in/demo-judge-test'
);

-- Confirm participant was created with auto-generated registration number
SELECT
    registration_no,
    full_name,
    email,
    track,
    cohort,
    participant_status,
    registered_at
FROM vw_participant_profiles
WHERE email = 'demo.judge.test@rhdc.io';

-- Confirm welcome notification was auto-sent
SELECT title, message, notification_type, created_at
FROM notifications n
JOIN users u ON n.user_id = u.user_id
WHERE u.email = 'demo.judge.test@rhdc.io';

-- ============================================================
-- SECTION 6 : LIVE DEMO — SUBMIT A TASK
-- ============================================================

DO $$
DECLARE
    v_participant_id UUID;
    v_submission_id  UUID;
BEGIN
    SELECT p.participant_id INTO v_participant_id
    FROM participants p
    JOIN users u ON p.user_id = u.user_id
    WHERE u.email = 'demo.judge.test@rhdc.io';

    -- Temporarily make Stage 1 active for demo purposes
    UPDATE stages SET status = 'active' WHERE stage_number = 1;

    SELECT submit_task(
        v_participant_id,
        1,
        'Master Operational DB — RHDC Stage 1',
        'A fully relational PostgreSQL database with 10 tables, 8 views, 4 stored procedures, row-level security, and auto-audit triggers.',
        'https://drive.google.com/file/rhdc-demo-submission',
        'https://github.com/demo-judge-test/rhdc-stage1'
    ) INTO v_submission_id;

    RAISE NOTICE 'Submission created with ID: %', v_submission_id;

    -- Restore stage status
    UPDATE stages SET status = 'completed' WHERE stage_number = 1;
END $$;

-- Confirm submission appears in the real-time tracker
SELECT
    registration_no,
    participant_name,
    stage_name,
    submission_title,
    submission_status,
    submitted_at
FROM vw_submission_tracker
WHERE participant_name = 'Judge Demo Participant';

-- ============================================================
-- SECTION 7 : LIVE DEMO — JUDGE SCORES THE SUBMISSION
-- ============================================================

DO $$
DECLARE
    v_submission_id UUID;
    v_judge_id      UUID;
    v_eval_id       UUID;
BEGIN
    SELECT s.submission_id INTO v_submission_id
    FROM submissions s
    JOIN participants p ON s.participant_id = p.participant_id
    JOIN users u ON p.user_id = u.user_id
    WHERE u.email = 'demo.judge.test@rhdc.io'
    LIMIT 1;

    SELECT judge_id INTO v_judge_id FROM judges LIMIT 1;

    SELECT record_evaluation(
        v_submission_id,
        v_judge_id,
        92.0,   -- technical_score
        88.5,   -- creativity_score
        91.0,   -- usability_score
        95.0,   -- presentation_score
        'Excellent schema design with proper normalization, realistic seed data, and comprehensive stored procedures. RLS and audit trail implementation are commendable.',
        TRUE    -- is_final: triggers auto-update of submission status
    ) INTO v_eval_id;

    RAISE NOTICE 'Evaluation recorded: %', v_eval_id;
END $$;

-- Confirm evaluation and auto-computed total score
SELECT
    participant_name,
    stage_name,
    avg_total_score,
    avg_technical,
    avg_creativity,
    avg_usability,
    avg_presentation,
    num_evaluations,
    has_final_evaluation
FROM vw_judge_scoreboard
WHERE participant_name = 'Judge Demo Participant';

-- Confirm submission status was auto-updated by the procedure
SELECT
    registration_no,
    participant_name,
    submission_title,
    submission_status,
    submitted_at
FROM vw_submission_tracker
WHERE participant_name = 'Judge Demo Participant';

-- ============================================================
-- SECTION 8 : GENERATE A STAGE REPORT (automated)
-- ============================================================

SELECT generate_stage_report(
    1,
    (SELECT user_id FROM users WHERE role = 'admin' LIMIT 1)
);

-- View the auto-generated JSON report
SELECT
    report_name,
    report_type,
    summary,
    jsonb_pretty(report_data) AS report_json,
    generated_at
FROM reports
WHERE report_type = 'auto_stage_summary'
ORDER BY generated_at DESC
LIMIT 1;

-- ============================================================
-- SECTION 9 : PARTICIPANT PROFILES VIEW
-- ============================================================

SELECT
    registration_no,
    full_name,
    email,
    country,
    track,
    cohort,
    participant_status,
    registered_at
FROM vw_participant_profiles
ORDER BY registered_at DESC
LIMIT 15;

-- ============================================================
-- SECTION 10 : REAL-TIME SUBMISSION TRACKER — Stage 1
-- ============================================================

SELECT
    registration_no,
    participant_name,
    stage_name,
    submission_title,
    submission_status,
    CASE submission_status
        WHEN 'accepted'     THEN 'Accepted'
        WHEN 'rejected'     THEN 'Rejected'
        WHEN 'pending'      THEN 'Pending'
        WHEN 'under_review' THEN 'Under Review'
        WHEN 'flagged'      THEN 'Flagged'
    END AS status_label,
    submitted_at
FROM vw_submission_tracker
WHERE stage_number = 1
ORDER BY submitted_at DESC
LIMIT 20;

-- ============================================================
-- SECTION 11 : STAGE LEADERBOARD — Top 10 Stage 1
-- ============================================================

SELECT
    rank_in_stage       AS rank,
    registration_no,
    participant_name,
    track,
    country,
    average_score,
    CASE WHEN qualified        THEN 'YES' ELSE 'NO' END AS qualified,
    CASE WHEN advanced_to_next THEN 'YES' ELSE 'NO' END AS advanced
FROM vw_stage_leaderboard
WHERE stage_name = 'Stage 1'
  AND qualified  = TRUE
ORDER BY rank_in_stage
LIMIT 10;

-- ============================================================
-- SECTION 12 : JUDGE SCORING OVERVIEW
-- ============================================================

SELECT
    participant_name,
    stage_name,
    avg_total_score,
    avg_technical,
    avg_creativity,
    avg_usability,
    avg_presentation,
    num_evaluations,
    has_final_evaluation
FROM vw_judge_scoreboard
ORDER BY avg_total_score DESC
LIMIT 15;

-- ============================================================
-- SECTION 13 : ANALYTICS SUMMARY (Admin Dashboard KPIs)
-- ============================================================

SELECT
    stage_name,
    stage_status,
    start_date,
    end_date,
    total_submissions,
    accepted_submissions,
    rejected_submissions,
    pending_submissions,
    under_review_submissions,
    total_evaluations,
    overall_avg_score,
    highest_score,
    lowest_score,
    qualified_participants,
    advanced_participants
FROM vw_analytics_summary
ORDER BY stage_id;

-- ============================================================
-- SECTION 14 : PENDING ACTIONS — Operations Queue
-- ============================================================

SELECT
    action_required,
    COUNT(*)                AS total,
    MIN(submitted_at)       AS oldest_item,
    MAX(hours_since_submission)::INTEGER AS max_hours_waiting
FROM vw_pending_actions
GROUP BY action_required
ORDER BY total DESC;

-- ============================================================
-- SECTION 15 : JUDGE ACTIVITY & FAIRNESS CHECK
-- ============================================================

SELECT
    judge_name,
    expertise,
    organization,
    total_evaluations,
    avg_score_given,
    final_evaluations,
    last_evaluation_date,
    CASE
        WHEN avg_score_given > 92 THEN 'Review: Consistently High'
        WHEN avg_score_given < 50 THEN 'Review: Consistently Low'
        ELSE 'Normal Range'
    END AS scoring_flag
FROM vw_judge_activity
ORDER BY total_evaluations DESC;

-- ============================================================
-- SECTION 16 : AUDIT TRAIL — Last 20 Operations
-- ============================================================

SELECT
    log_id,
    COALESCE(actor, 'System / Trigger') AS actor,
    actor_role,
    action,
    table_name,
    record_id,
    TO_CHAR(performed_at, 'YYYY-MM-DD HH24:MI:SS') AS performed_at
FROM vw_audit_trail
ORDER BY log_id DESC
LIMIT 20;

-- ============================================================
-- SECTION 17 : COHORT & TRACK DISTRIBUTION
-- ============================================================

SELECT
    cohort,
    track,
    COUNT(*)                                                     AS total_participants,
    COUNT(*) FILTER (WHERE participant_status = 'active')        AS active,
    COUNT(*) FILTER (WHERE participant_status = 'completed')     AS completed,
    COUNT(*) FILTER (WHERE participant_status = 'disqualified')  AS disqualified,
    COUNT(*) FILTER (WHERE participant_status = 'withdrawn')     AS withdrawn
FROM vw_participant_profiles
GROUP BY cohort, track
ORDER BY cohort, total_participants DESC;

-- ============================================================
-- SECTION 18 : STAGE ADVANCEMENT SUMMARY
-- ============================================================

SELECT
    stage_name,
    COUNT(*)                                      AS total_in_stage,
    COUNT(*) FILTER (WHERE qualified = TRUE)      AS qualified,
    COUNT(*) FILTER (WHERE advanced_to_next=TRUE) AS advanced,
    ROUND(AVG(average_score), 2)                  AS mean_score,
    ROUND(MAX(average_score), 2)                  AS top_score,
    ROUND(MIN(average_score), 2)                  AS lowest_score
FROM vw_stage_leaderboard
GROUP BY stage_id, stage_name
ORDER BY stage_id;

-- ============================================================
-- SECTION 19 : FULL SUBMISSION HISTORY FOR ONE PARTICIPANT
-- ============================================================

SELECT
    st.stage_name,
    st.stage_number,
    s.title              AS submission_title,
    s.status             AS submission_status,
    s.submitted_at,
    ROUND(AVG(e.score),2) AS avg_score,
    COUNT(e.evaluation_id) AS evaluations_received,
    sp.qualified,
    sp.rank_in_stage,
    sp.advanced_to_next
FROM participants p
JOIN users u          ON p.user_id       = u.user_id
JOIN submissions s    ON p.participant_id = s.participant_id
JOIN stages st        ON s.stage_id      = st.stage_id
LEFT JOIN evaluations e  ON s.submission_id  = e.submission_id
LEFT JOIN stage_progress sp ON (p.participant_id = sp.participant_id
                             AND st.stage_id     = sp.stage_id)
WHERE p.registration_no = 'RH-2025-0001'   -- change to any valid reg number
GROUP BY st.stage_name, st.stage_number, s.title, s.status, s.submitted_at,
         sp.qualified, sp.rank_in_stage, sp.advanced_to_next
ORDER BY st.stage_number;

-- ============================================================
-- SECTION 20 : VERIFY ROW-LEVEL SECURITY POLICIES
-- ============================================================

SELECT
    tablename,
    policyname,
    permissive,
    roles,
    cmd,
    qual
FROM pg_policies
WHERE schemaname = 'public'
ORDER BY tablename, policyname;

-- ============================================================
-- SECTION 21 : VERIFY ALL TRIGGERS ARE ACTIVE
-- ============================================================

SELECT
    trigger_name,
    event_object_table  AS on_table,
    event_manipulation  AS fires_on,
    action_timing       AS timing
FROM information_schema.triggers
WHERE trigger_schema = 'public'
ORDER BY event_object_table, trigger_name;

-- ============================================================
-- SECTION 22 : VERIFY ALL INDEXES
-- ============================================================

SELECT
    indexname,
    tablename,
    indexdef
FROM pg_indexes
WHERE schemaname = 'public'
  AND indexname NOT LIKE '%_pkey'
ORDER BY tablename, indexname;

-- ============================================================
-- SECTION 23 : VERIFY DATABASE ROLES
-- ============================================================

SELECT
    rolname        AS role_name,
    rolcanlogin    AS can_login,
    rolcreatedb    AS can_create_db,
    rolsuper       AS is_superuser
FROM pg_roles
WHERE rolname LIKE 'rh_%'
ORDER BY rolname;

-- ============================================================
-- END OF DEMO
-- All sections passed = database is fully operational.
-- ============================================================
