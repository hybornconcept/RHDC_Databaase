-- ============================================================
-- REMOTE HUSTLE DATABASE CHALLENGE (RHDC)
-- Operational Queries & Views (minimum 8)
-- PostgreSQL | Stage 1
-- ============================================================

-- ============================================================
-- VIEW 1: vw_participant_profiles
-- Full participant profile with user details
-- USE: Admin/Support quick lookup of all participants
-- ============================================================
CREATE OR REPLACE VIEW vw_participant_profiles AS
SELECT
    p.participant_id,
    p.registration_no,
    u.full_name,
    u.email,
    u.phone,
    u.country,
    p.cohort,
    p.track,
    p.status          AS participant_status,
    p.github_url,
    p.linkedin_url,
    p.registered_at,
    p.bio
FROM participants p
JOIN users u ON p.user_id = u.user_id
ORDER BY p.registered_at DESC;

COMMENT ON VIEW vw_participant_profiles IS 'Full participant profiles joined with user identity data';

-- ============================================================
-- VIEW 2: vw_submission_tracker
-- All submissions with participant name, stage, and status
-- USE: Real-time submission tracking dashboard
-- ============================================================
CREATE OR REPLACE VIEW vw_submission_tracker AS
SELECT
    s.submission_id,
    p.registration_no,
    u.full_name        AS participant_name,
    u.email            AS participant_email,
    p.track,
    st.stage_name,
    st.stage_number,
    s.title            AS submission_title,
    s.status           AS submission_status,
    s.submission_url,
    s.github_repo,
    s.submitted_at,
    s.updated_at
FROM submissions s
JOIN participants p   ON s.participant_id = p.participant_id
JOIN users u          ON p.user_id        = u.user_id
JOIN stages st        ON s.stage_id       = st.stage_id
ORDER BY s.submitted_at DESC;

COMMENT ON VIEW vw_submission_tracker IS 'Real-time view of all submissions with participant and stage details';

-- ============================================================
-- VIEW 3: vw_judge_scoreboard
-- Average scores per submission across all judges
-- USE: Score aggregation and dispute detection
-- ============================================================
CREATE OR REPLACE VIEW vw_judge_scoreboard AS
SELECT
    s.submission_id,
    p.registration_no,
    u.full_name          AS participant_name,
    st.stage_name,
    COUNT(e.evaluation_id)           AS num_evaluations,
    ROUND(AVG(e.score), 2)           AS avg_total_score,
    ROUND(AVG(e.technical_score), 2) AS avg_technical,
    ROUND(AVG(e.creativity_score), 2) AS avg_creativity,
    ROUND(AVG(e.usability_score), 2) AS avg_usability,
    ROUND(AVG(e.presentation_score),2) AS avg_presentation,
    MAX(e.score)                     AS highest_score,
    MIN(e.score)                     AS lowest_score,
    BOOL_OR(e.is_final)              AS has_final_evaluation
FROM submissions s
JOIN participants p  ON s.participant_id = p.participant_id
JOIN users u         ON p.user_id        = u.user_id
JOIN stages st       ON s.stage_id       = st.stage_id
LEFT JOIN evaluations e ON s.submission_id = e.submission_id
GROUP BY s.submission_id, p.registration_no, u.full_name, st.stage_name
ORDER BY avg_total_score DESC NULLS LAST;

COMMENT ON VIEW vw_judge_scoreboard IS 'Aggregated judge scores per submission with detailed score breakdown';

-- ============================================================
-- VIEW 4: vw_stage_leaderboard
-- Ranked participants per stage by average score
-- USE: Leaderboard display and advancement decisions
-- ============================================================
CREATE OR REPLACE VIEW vw_stage_leaderboard AS
SELECT
    sp.stage_id,
    st.stage_name,
    sp.participant_id,
    p.registration_no,
    u.full_name        AS participant_name,
    p.track,
    u.country,
    sp.average_score,
    sp.rank_in_stage,
    sp.qualified,
    sp.advanced_to_next
FROM stage_progress sp
JOIN participants p ON sp.participant_id = p.participant_id
JOIN users u        ON p.user_id = u.user_id
JOIN stages st      ON sp.stage_id = st.stage_id
ORDER BY sp.stage_id, sp.average_score DESC NULLS LAST;

COMMENT ON VIEW vw_stage_leaderboard IS 'Ranked leaderboard of participants per stage';

-- ============================================================
-- VIEW 5: vw_analytics_summary
-- High-level analytics summary per stage
-- USE: Admin reporting dashboard
-- ============================================================
CREATE OR REPLACE VIEW vw_analytics_summary AS
SELECT
    st.stage_id,
    st.stage_name,
    st.status                          AS stage_status,
    st.start_date,
    st.end_date,
    COUNT(DISTINCT s.submission_id)    AS total_submissions,
    COUNT(DISTINCT CASE WHEN s.status = 'accepted'      THEN s.submission_id END) AS accepted_submissions,
    COUNT(DISTINCT CASE WHEN s.status = 'rejected'      THEN s.submission_id END) AS rejected_submissions,
    COUNT(DISTINCT CASE WHEN s.status = 'pending'       THEN s.submission_id END) AS pending_submissions,
    COUNT(DISTINCT CASE WHEN s.status = 'under_review'  THEN s.submission_id END) AS under_review_submissions,
    COUNT(DISTINCT e.evaluation_id)    AS total_evaluations,
    ROUND(AVG(e.score), 2)             AS overall_avg_score,
    ROUND(MAX(e.score), 2)             AS highest_score,
    ROUND(MIN(e.score), 2)             AS lowest_score,
    COUNT(DISTINCT sp.participant_id) FILTER (WHERE sp.qualified = TRUE)  AS qualified_participants,
    COUNT(DISTINCT sp.participant_id) FILTER (WHERE sp.advanced_to_next = TRUE) AS advanced_participants
FROM stages st
LEFT JOIN submissions s  ON st.stage_id = s.stage_id
LEFT JOIN evaluations e  ON s.submission_id = e.submission_id
LEFT JOIN stage_progress sp ON st.stage_id = sp.stage_id
GROUP BY st.stage_id, st.stage_name, st.status, st.start_date, st.end_date
ORDER BY st.stage_number;

COMMENT ON VIEW vw_analytics_summary IS 'High-level analytics and KPIs per competition stage';

-- ============================================================
-- VIEW 6: vw_audit_trail
-- Human-readable audit log view
-- USE: Compliance, debugging, admin oversight
-- ============================================================
CREATE OR REPLACE VIEW vw_audit_trail AS
SELECT
    al.log_id,
    COALESCE(u.full_name, 'System') AS actor,
    u.email                          AS actor_email,
    u.role                           AS actor_role,
    al.action,
    al.table_name,
    al.record_id,
    al.ip_address,
    al.performed_at
FROM audit_logs al
LEFT JOIN users u ON al.user_id = u.user_id
ORDER BY al.performed_at DESC;

COMMENT ON VIEW vw_audit_trail IS 'Human-readable audit trail with actor identity details';

-- ============================================================
-- VIEW 7: vw_judge_activity
-- Per-judge evaluation statistics
-- USE: Monitor judge participation and workload balance
-- ============================================================
CREATE OR REPLACE VIEW vw_judge_activity AS
SELECT
    j.judge_id,
    u.full_name          AS judge_name,
    u.email              AS judge_email,
    j.expertise,
    j.organization,
    COUNT(e.evaluation_id)            AS total_evaluations,
    ROUND(AVG(e.score), 2)            AS avg_score_given,
    COUNT(CASE WHEN e.is_final = TRUE THEN 1 END) AS final_evaluations,
    MAX(e.evaluated_at)               AS last_evaluation_date,
    j.assigned_stages,
    j.is_active
FROM judges j
JOIN users u    ON j.user_id = u.user_id
LEFT JOIN evaluations e ON j.judge_id = e.judge_id
GROUP BY j.judge_id, u.full_name, u.email, j.expertise, j.organization, j.assigned_stages, j.is_active
ORDER BY total_evaluations DESC;

COMMENT ON VIEW vw_judge_activity IS 'Judge workload and scoring activity statistics';

-- ============================================================
-- VIEW 8: vw_pending_actions
-- Submissions that require immediate attention
-- USE: Operations queue for admins and support staff
-- ============================================================
CREATE OR REPLACE VIEW vw_pending_actions AS
SELECT
    s.submission_id,
    p.registration_no,
    u.full_name          AS participant_name,
    u.email              AS participant_email,
    st.stage_name,
    s.title              AS submission_title,
    s.status,
    s.submitted_at,
    EXTRACT(EPOCH FROM (NOW() - s.submitted_at))/3600 AS hours_since_submission,
    COUNT(e.evaluation_id) AS evaluations_received,
    CASE
        WHEN s.status = 'pending' AND COUNT(e.evaluation_id) = 0 THEN 'NEEDS ASSIGNMENT'
        WHEN s.status = 'pending' AND COUNT(e.evaluation_id) > 0 THEN 'EVALUATION IN PROGRESS'
        WHEN s.status = 'under_review' THEN 'AWAITING FINAL DECISION'
        WHEN s.status = 'flagged'      THEN 'FLAGGED - REQUIRES REVIEW'
        ELSE 'OTHER'
    END AS action_required
FROM submissions s
JOIN participants p ON s.participant_id = p.participant_id
JOIN users u        ON p.user_id = u.user_id
JOIN stages st      ON s.stage_id = st.stage_id
LEFT JOIN evaluations e ON s.submission_id = e.submission_id
WHERE s.status NOT IN ('accepted','rejected')
GROUP BY s.submission_id, p.registration_no, u.full_name, u.email,
         st.stage_name, s.title, s.status, s.submitted_at
ORDER BY s.submitted_at ASC;

COMMENT ON VIEW vw_pending_actions IS 'Operations queue of submissions needing immediate attention';

-- ============================================================
-- QUERY 1: Participant Registration & Profile Lookup
-- Lookup a participant by email or registration number
-- ============================================================
-- Get full profile by registration number:
-- SELECT * FROM vw_participant_profiles WHERE registration_no = 'RH-2025-0001';

-- Get all participants in a specific track:
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
WHERE track = 'Data Analytics'
ORDER BY registered_at;

-- ============================================================
-- QUERY 2: Submission Tracking by Stage
-- Get all submissions for a given stage with status
-- ============================================================
SELECT
    registration_no,
    participant_name,
    stage_name,
    submission_title,
    submission_status,
    submitted_at,
    CASE
        WHEN submission_status = 'accepted'     THEN '✅ Accepted'
        WHEN submission_status = 'rejected'     THEN '❌ Rejected'
        WHEN submission_status = 'pending'      THEN '⏳ Pending'
        WHEN submission_status = 'under_review' THEN '🔍 Under Review'
        WHEN submission_status = 'flagged'      THEN '🚩 Flagged'
    END AS status_label
FROM vw_submission_tracker
WHERE stage_number = 1
ORDER BY submitted_at DESC;

-- ============================================================
-- QUERY 3: Judge Scoring Summary
-- See all evaluations for a specific stage
-- ============================================================
SELECT
    vs.participant_name,
    vs.registration_no,
    vs.stage_name,
    vs.avg_total_score,
    vs.avg_technical,
    vs.avg_creativity,
    vs.avg_usability,
    vs.avg_presentation,
    vs.num_evaluations,
    vs.has_final_evaluation
FROM vw_judge_scoreboard vs
JOIN stages st ON vs.stage_name = st.stage_name
WHERE st.stage_number = 1
ORDER BY vs.avg_total_score DESC;

-- ============================================================
-- QUERY 4: Stage Progress & Advancement Report
-- Who qualified and who advanced from each stage
-- ============================================================
SELECT
    stage_name,
    COUNT(*)                                      AS total_participants,
    COUNT(*) FILTER (WHERE qualified = TRUE)      AS qualified_count,
    COUNT(*) FILTER (WHERE advanced_to_next=TRUE) AS advanced_count,
    ROUND(AVG(average_score), 2)                  AS mean_score,
    ROUND(MAX(average_score), 2)                  AS top_score,
    ROUND(MIN(average_score), 2)                  AS lowest_score
FROM vw_stage_leaderboard
GROUP BY stage_id, stage_name
ORDER BY stage_id;

-- ============================================================
-- QUERY 5: Reports & Analytics — Top 10 Performers Stage 1
-- ============================================================
SELECT
    rank_in_stage           AS rank,
    registration_no,
    participant_name,
    track,
    country,
    average_score,
    CASE WHEN advanced_to_next THEN 'Advanced ✅' ELSE 'Not Advanced' END AS status
FROM vw_stage_leaderboard
WHERE stage_name = 'Stage 1'
  AND qualified = TRUE
ORDER BY rank_in_stage
LIMIT 10;

-- ============================================================
-- QUERY 6: Audit Log — Recent Activity Report
-- Last 50 data-changing operations
-- ============================================================
SELECT
    log_id,
    actor,
    actor_role,
    action,
    table_name,
    record_id,
    ip_address,
    TO_CHAR(performed_at, 'YYYY-MM-DD HH24:MI:SS') AS timestamp
FROM vw_audit_trail
ORDER BY log_id DESC
LIMIT 50;

-- ============================================================
-- QUERY 7: Pending Actions Dashboard
-- What needs attention right now?
-- ============================================================
SELECT
    action_required,
    COUNT(*) AS count,
    MIN(submitted_at) AS oldest_pending
FROM vw_pending_actions
GROUP BY action_required
ORDER BY count DESC;

-- ============================================================
-- QUERY 8: Participant Submission History
-- Full submission timeline for one participant
-- ============================================================
SELECT
    st.stage_name,
    st.stage_number,
    s.title            AS submission_title,
    s.status           AS submission_status,
    s.submitted_at,
    ROUND(AVG(e.score),2) AS avg_score,
    COUNT(e.evaluation_id) AS evaluations_received,
    sp.qualified,
    sp.rank_in_stage,
    sp.advanced_to_next
FROM participants p
JOIN users u          ON p.user_id = u.user_id
JOIN submissions s    ON p.participant_id = s.participant_id
JOIN stages st        ON s.stage_id = st.stage_id
LEFT JOIN evaluations e ON s.submission_id = e.submission_id
LEFT JOIN stage_progress sp ON (p.participant_id = sp.participant_id AND st.stage_id = sp.stage_id)
WHERE p.registration_no = 'RH-2025-0001'  -- Change to target participant
GROUP BY st.stage_name, st.stage_number, s.title, s.status, s.submitted_at,
         sp.qualified, sp.rank_in_stage, sp.advanced_to_next
ORDER BY st.stage_number;

-- ============================================================
-- QUERY 9: Cohort & Track Distribution Analytics
-- ============================================================
SELECT
    cohort,
    track,
    COUNT(*)                                                    AS total_participants,
    COUNT(*) FILTER (WHERE participant_status = 'active')       AS active,
    COUNT(*) FILTER (WHERE participant_status = 'disqualified') AS disqualified,
    COUNT(*) FILTER (WHERE participant_status = 'withdrawn')    AS withdrawn,
    COUNT(*) FILTER (WHERE participant_status = 'completed')    AS completed
FROM vw_participant_profiles
GROUP BY cohort, track
ORDER BY cohort, total_participants DESC;

-- ============================================================
-- QUERY 10: Judge Activity & Fairness Check
-- Detect potential scoring outliers per judge
-- ============================================================
SELECT
    judge_name,
    judge_email,
    expertise,
    organization,
    total_evaluations,
    avg_score_given,
    final_evaluations,
    last_evaluation_date,
    CASE
        WHEN avg_score_given > 90 THEN '⚠️ Review: Consistently High Scores'
        WHEN avg_score_given < 50 THEN '⚠️ Review: Consistently Low Scores'
        ELSE '✅ Normal Range'
    END AS scoring_flag
FROM vw_judge_activity
ORDER BY total_evaluations DESC;

-- ============================================================
-- STORED PROCEDURE: Register a new participant
-- ============================================================
CREATE OR REPLACE FUNCTION register_participant(
    p_full_name     TEXT,
    p_email         TEXT,
    p_password_hash TEXT,
    p_phone         TEXT,
    p_country       TEXT,
    p_cohort        TEXT,
    p_track         TEXT,
    p_bio           TEXT DEFAULT NULL,
    p_github_url    TEXT DEFAULT NULL,
    p_linkedin_url  TEXT DEFAULT NULL
)
RETURNS TABLE(new_user_id UUID, new_participant_id UUID, registration_no TEXT) AS $$
DECLARE
    v_user_id UUID;
    v_part_id UUID;
    v_reg_no  TEXT;
    v_count   INTEGER;
BEGIN
    -- Check if email already exists
    IF EXISTS (SELECT 1 FROM users WHERE email = p_email) THEN
        RAISE EXCEPTION 'Email % is already registered.', p_email;
    END IF;

    -- Create user
    INSERT INTO users (full_name, email, password_hash, role, phone, country)
    VALUES (p_full_name, p_email, p_password_hash, 'participant', p_phone, p_country)
    RETURNING user_id INTO v_user_id;

    -- Generate registration number
    SELECT COUNT(*)+1 INTO v_count FROM participants;
    v_reg_no := 'RH-' || TO_CHAR(NOW(), 'YYYY') || '-' || LPAD(v_count::TEXT, 4, '0');

    -- Create participant profile
    INSERT INTO participants (user_id, registration_no, cohort, track, bio, github_url, linkedin_url)
    VALUES (v_user_id, v_reg_no, p_cohort, p_track, p_bio, p_github_url, p_linkedin_url)
    RETURNING participant_id INTO v_part_id;

    -- Log the action
    INSERT INTO audit_logs (action, table_name, record_id, new_values)
    VALUES ('INSERT', 'participants', v_part_id::TEXT,
            jsonb_build_object('email', p_email, 'cohort', p_cohort, 'track', p_track));

    -- Send welcome notification
    INSERT INTO notifications (user_id, title, message, notification_type)
    VALUES (v_user_id,
            'Welcome to RHDC!',
            'You have successfully registered. Your registration number is: ' || v_reg_no,
            'general');

    RETURN QUERY SELECT v_user_id, v_part_id, v_reg_no;
END;
$$ LANGUAGE plpgsql;

-- ============================================================
-- STORED PROCEDURE: Submit a task for a stage
-- ============================================================
CREATE OR REPLACE FUNCTION submit_task(
    p_participant_id UUID,
    p_stage_id       INTEGER,
    p_title          TEXT,
    p_description    TEXT,
    p_submission_url TEXT,
    p_github_repo    TEXT DEFAULT NULL
)
RETURNS UUID AS $$
DECLARE
    v_submission_id UUID;
BEGIN
    -- Check stage is active
    IF NOT EXISTS (SELECT 1 FROM stages WHERE stage_id = p_stage_id AND status = 'active') THEN
        RAISE EXCEPTION 'Stage % is not currently active for submissions.', p_stage_id;
    END IF;

    -- Check participant exists and is active
    IF NOT EXISTS (SELECT 1 FROM participants WHERE participant_id = p_participant_id AND status = 'active') THEN
        RAISE EXCEPTION 'Participant not found or not active.';
    END IF;

    -- Check for duplicate submission
    IF EXISTS (SELECT 1 FROM submissions WHERE participant_id = p_participant_id AND stage_id = p_stage_id) THEN
        RAISE EXCEPTION 'Participant has already submitted for this stage.';
    END IF;

    INSERT INTO submissions (participant_id, stage_id, title, description, submission_url, github_repo)
    VALUES (p_participant_id, p_stage_id, p_title, p_description, p_submission_url, p_github_repo)
    RETURNING submission_id INTO v_submission_id;

    RETURN v_submission_id;
END;
$$ LANGUAGE plpgsql;

-- ============================================================
-- STORED PROCEDURE: Record a judge evaluation
-- ============================================================
CREATE OR REPLACE FUNCTION record_evaluation(
    p_submission_id     UUID,
    p_judge_id          UUID,
    p_technical_score   NUMERIC,
    p_creativity_score  NUMERIC,
    p_usability_score   NUMERIC,
    p_presentation_score NUMERIC,
    p_feedback          TEXT,
    p_is_final          BOOLEAN DEFAULT FALSE
)
RETURNS UUID AS $$
DECLARE
    v_eval_id   UUID;
    v_avg_score NUMERIC;
BEGIN
    v_avg_score := ROUND((p_technical_score + p_creativity_score + p_usability_score + p_presentation_score) / 4, 2);

    INSERT INTO evaluations (
        submission_id, judge_id, score,
        technical_score, creativity_score, usability_score, presentation_score,
        feedback, is_final
    ) VALUES (
        p_submission_id, p_judge_id, v_avg_score,
        p_technical_score, p_creativity_score, p_usability_score, p_presentation_score,
        p_feedback, p_is_final
    )
    ON CONFLICT (submission_id, judge_id) DO UPDATE
        SET score = v_avg_score,
            technical_score = p_technical_score,
            creativity_score = p_creativity_score,
            usability_score = p_usability_score,
            presentation_score = p_presentation_score,
            feedback = p_feedback,
            is_final = p_is_final,
            updated_at = NOW()
    RETURNING evaluation_id INTO v_eval_id;

    -- Update submission status
    UPDATE submissions
    SET status = CASE WHEN p_is_final AND v_avg_score >= 60 THEN 'accepted'
                      WHEN p_is_final AND v_avg_score < 60  THEN 'rejected'
                      ELSE 'under_review'
                 END,
        updated_at = NOW()
    WHERE submission_id = p_submission_id;

    RETURN v_eval_id;
END;
$$ LANGUAGE plpgsql;

-- ============================================================
-- STORED PROCEDURE: Generate Stage Report
-- ============================================================
CREATE OR REPLACE FUNCTION generate_stage_report(
    p_stage_id    INTEGER,
    p_generated_by UUID
)
RETURNS UUID AS $$
DECLARE
    v_report_id UUID;
    v_report_data JSONB;
BEGIN
    SELECT jsonb_build_object(
        'stage_id',              stage_id,
        'stage_name',            stage_name,
        'stage_status',          stage_status,
        'total_submissions',     total_submissions,
        'accepted_submissions',  accepted_submissions,
        'rejected_submissions',  rejected_submissions,
        'pending_submissions',   pending_submissions,
        'total_evaluations',     total_evaluations,
        'overall_avg_score',     overall_avg_score,
        'highest_score',         highest_score,
        'lowest_score',          lowest_score,
        'qualified_participants',qualified_participants,
        'advanced_participants', advanced_participants,
        'generated_at',          NOW()
    ) INTO v_report_data
    FROM vw_analytics_summary
    WHERE stage_id = p_stage_id;

    INSERT INTO reports (report_name, report_type, stage_id, generated_by, report_data, summary)
    VALUES (
        'Auto-generated Stage ' || p_stage_id || ' Report',
        'auto_stage_summary',
        p_stage_id,
        p_generated_by,
        v_report_data,
        'Automated analytics report for stage ' || p_stage_id
    )
    RETURNING report_id INTO v_report_id;

    RETURN v_report_id;
END;
$$ LANGUAGE plpgsql;
