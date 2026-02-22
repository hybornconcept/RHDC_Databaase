-- ============================================================
-- REMOTE HUSTLE DATABASE CHALLENGE (RHDC)
-- Master Operational Database - Schema (DDL)
-- PostgreSQL | Stage 1
-- ============================================================

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ============================================================
-- ENUMS
-- ============================================================

CREATE TYPE user_role AS ENUM ('admin', 'judge', 'participant', 'support');
CREATE TYPE submission_status AS ENUM ('pending', 'under_review', 'accepted', 'rejected', 'flagged');
CREATE TYPE stage_status AS ENUM ('upcoming', 'active', 'completed', 'cancelled');
CREATE TYPE participant_status AS ENUM ('registered', 'active', 'disqualified', 'withdrawn', 'completed');
CREATE TYPE audit_action AS ENUM ('INSERT', 'UPDATE', 'DELETE', 'LOGIN', 'LOGOUT', 'VIEW');

-- ============================================================
-- TABLE 1: users
-- Central identity table for all platform users
-- ============================================================
CREATE TABLE users (
    user_id       UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    full_name     VARCHAR(150)  NOT NULL,
    email         VARCHAR(255)  NOT NULL UNIQUE,
    password_hash TEXT          NOT NULL,
    role          user_role     NOT NULL DEFAULT 'participant',
    phone         VARCHAR(30),
    country       VARCHAR(100),
    is_active     BOOLEAN       NOT NULL DEFAULT TRUE,
    created_at    TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    updated_at    TIMESTAMPTZ   NOT NULL DEFAULT NOW()
);

-- ============================================================
-- TABLE 2: stages
-- Competition stages / rounds
-- ============================================================
CREATE TABLE stages (
    stage_id     SERIAL        PRIMARY KEY,
    stage_name   VARCHAR(150)  NOT NULL,
    stage_number INTEGER       NOT NULL UNIQUE,
    description  TEXT,
    theme        VARCHAR(255),
    duration_days INTEGER      NOT NULL DEFAULT 7,
    start_date   DATE,
    end_date     DATE,
    status       stage_status  NOT NULL DEFAULT 'upcoming',
    max_score    NUMERIC(6,2)  NOT NULL DEFAULT 100.00,
    created_at   TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    CONSTRAINT chk_stage_dates CHECK (end_date >= start_date)
);

-- ============================================================
-- TABLE 3: participants
-- Registered competition participants (linked to users)
-- ============================================================
CREATE TABLE participants (
    participant_id   UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id          UUID          NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    registration_no  VARCHAR(30)   NOT NULL UNIQUE,
    cohort           VARCHAR(50),
    track            VARCHAR(100),
    bio              TEXT,
    github_url       VARCHAR(255),
    linkedin_url     VARCHAR(255),
    status           participant_status NOT NULL DEFAULT 'registered',
    registered_at    TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_participant_user UNIQUE (user_id)
);

-- ============================================================
-- TABLE 4: judges
-- Judge profiles (linked to users with judge role)
-- ============================================================
CREATE TABLE judges (
    judge_id       UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id        UUID          NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    expertise      VARCHAR(255),
    organization   VARCHAR(200),
    assigned_stages INTEGER[],
    is_active      BOOLEAN       NOT NULL DEFAULT TRUE,
    created_at     TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_judge_user UNIQUE (user_id)
);

-- ============================================================
-- TABLE 5: submissions
-- Participant task submissions per stage
-- ============================================================
CREATE TABLE submissions (
    submission_id    UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    participant_id   UUID          NOT NULL REFERENCES participants(participant_id) ON DELETE CASCADE,
    stage_id         INTEGER       NOT NULL REFERENCES stages(stage_id),
    title            VARCHAR(255)  NOT NULL,
    description      TEXT,
    submission_url   VARCHAR(500),
    github_repo      VARCHAR(500),
    additional_notes TEXT,
    status           submission_status NOT NULL DEFAULT 'pending',
    submitted_at     TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_participant_stage_submission UNIQUE (participant_id, stage_id)
);

-- ============================================================
-- TABLE 6: evaluations
-- Judge scoring of submissions
-- ============================================================
CREATE TABLE evaluations (
    evaluation_id    UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    submission_id    UUID          NOT NULL REFERENCES submissions(submission_id) ON DELETE CASCADE,
    judge_id         UUID          NOT NULL REFERENCES judges(judge_id),
    score            NUMERIC(6,2)  NOT NULL,
    technical_score  NUMERIC(6,2)  NOT NULL DEFAULT 0,
    creativity_score NUMERIC(6,2)  NOT NULL DEFAULT 0,
    usability_score  NUMERIC(6,2)  NOT NULL DEFAULT 0,
    presentation_score NUMERIC(6,2) NOT NULL DEFAULT 0,
    feedback         TEXT,
    is_final         BOOLEAN       NOT NULL DEFAULT FALSE,
    evaluated_at     TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_submission_judge UNIQUE (submission_id, judge_id),
    CONSTRAINT chk_score_range CHECK (score BETWEEN 0 AND 100),
    CONSTRAINT chk_technical_range CHECK (technical_score BETWEEN 0 AND 100),
    CONSTRAINT chk_creativity_range CHECK (creativity_score BETWEEN 0 AND 100),
    CONSTRAINT chk_usability_range CHECK (usability_score BETWEEN 0 AND 100),
    CONSTRAINT chk_presentation_range CHECK (presentation_score BETWEEN 0 AND 100)
);

-- ============================================================
-- TABLE 7: stage_progress
-- Tracks participant advancement through stages
-- ============================================================
CREATE TABLE stage_progress (
    progress_id      UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    participant_id   UUID          NOT NULL REFERENCES participants(participant_id) ON DELETE CASCADE,
    stage_id         INTEGER       NOT NULL REFERENCES stages(stage_id),
    qualified        BOOLEAN       NOT NULL DEFAULT FALSE,
    average_score    NUMERIC(6,2),
    rank_in_stage    INTEGER,
    advanced_to_next BOOLEAN       NOT NULL DEFAULT FALSE,
    notes            TEXT,
    created_at       TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMPTZ   NOT NULL DEFAULT NOW(),
    CONSTRAINT uq_participant_stage_progress UNIQUE (participant_id, stage_id)
);

-- ============================================================
-- TABLE 8: reports
-- Admin-generated analytics and summary reports
-- ============================================================
CREATE TABLE reports (
    report_id     UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    report_name   VARCHAR(255)  NOT NULL,
    report_type   VARCHAR(100)  NOT NULL,
    stage_id      INTEGER       REFERENCES stages(stage_id),
    generated_by  UUID          NOT NULL REFERENCES users(user_id),
    report_data   JSONB,
    summary       TEXT,
    generated_at  TIMESTAMPTZ   NOT NULL DEFAULT NOW()
);

-- ============================================================
-- TABLE 9: audit_logs
-- System-wide audit trail for all critical actions
-- ============================================================
CREATE TABLE audit_logs (
    log_id        BIGSERIAL     PRIMARY KEY,
    user_id       UUID          REFERENCES users(user_id),
    action        audit_action  NOT NULL,
    table_name    VARCHAR(100)  NOT NULL,
    record_id     TEXT,
    old_values    JSONB,
    new_values    JSONB,
    ip_address    INET,
    user_agent    TEXT,
    performed_at  TIMESTAMPTZ   NOT NULL DEFAULT NOW()
);

-- ============================================================
-- TABLE 10: notifications
-- In-app notifications for participants and judges
-- ============================================================
CREATE TABLE notifications (
    notification_id UUID          PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID          NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
    title           VARCHAR(255)  NOT NULL,
    message         TEXT          NOT NULL,
    is_read         BOOLEAN       NOT NULL DEFAULT FALSE,
    notification_type VARCHAR(50) NOT NULL DEFAULT 'general',
    related_id      TEXT,
    created_at      TIMESTAMPTZ   NOT NULL DEFAULT NOW()
);

-- ============================================================
-- INDEXES for performance
-- ============================================================
CREATE INDEX idx_users_email         ON users(email);
CREATE INDEX idx_users_role          ON users(role);
CREATE INDEX idx_participants_status ON participants(status);
CREATE INDEX idx_submissions_stage   ON submissions(stage_id);
CREATE INDEX idx_submissions_status  ON submissions(status);
CREATE INDEX idx_submissions_participant ON submissions(participant_id);
CREATE INDEX idx_evaluations_judge   ON evaluations(judge_id);
CREATE INDEX idx_evaluations_submission ON evaluations(submission_id);
CREATE INDEX idx_audit_logs_user     ON audit_logs(user_id);
CREATE INDEX idx_audit_logs_table    ON audit_logs(table_name);
CREATE INDEX idx_audit_logs_time     ON audit_logs(performed_at DESC);
CREATE INDEX idx_stage_progress_participant ON stage_progress(participant_id);
CREATE INDEX idx_notifications_user  ON notifications(user_id);

-- ============================================================
-- TRIGGERS: auto-update updated_at timestamps
-- ============================================================
CREATE OR REPLACE FUNCTION update_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_users_updated
    BEFORE UPDATE ON users
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER trg_participants_updated
    BEFORE UPDATE ON participants
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER trg_submissions_updated
    BEFORE UPDATE ON submissions
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER trg_evaluations_updated
    BEFORE UPDATE ON evaluations
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

CREATE TRIGGER trg_stage_progress_updated
    BEFORE UPDATE ON stage_progress
    FOR EACH ROW EXECUTE FUNCTION update_timestamp();

-- ============================================================
-- TRIGGER: Auto audit log on submissions changes
-- ============================================================
CREATE OR REPLACE FUNCTION audit_submissions()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO audit_logs(action, table_name, record_id, new_values)
        VALUES ('INSERT', 'submissions', NEW.submission_id::TEXT, row_to_json(NEW)::JSONB);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO audit_logs(action, table_name, record_id, old_values, new_values)
        VALUES ('UPDATE', 'submissions', NEW.submission_id::TEXT, row_to_json(OLD)::JSONB, row_to_json(NEW)::JSONB);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO audit_logs(action, table_name, record_id, old_values)
        VALUES ('DELETE', 'submissions', OLD.submission_id::TEXT, row_to_json(OLD)::JSONB);
    END IF;
    RETURN COALESCE(NEW, OLD);
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_audit_submissions
    AFTER INSERT OR UPDATE OR DELETE ON submissions
    FOR EACH ROW EXECUTE FUNCTION audit_submissions();

-- ============================================================
-- TRIGGER: Auto audit log on evaluations changes
-- ============================================================
CREATE OR REPLACE FUNCTION audit_evaluations()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO audit_logs(action, table_name, record_id, new_values)
        VALUES ('INSERT', 'evaluations', NEW.evaluation_id::TEXT, row_to_json(NEW)::JSONB);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO audit_logs(action, table_name, record_id, old_values, new_values)
        VALUES ('UPDATE', 'evaluations', NEW.evaluation_id::TEXT, row_to_json(OLD)::JSONB, row_to_json(NEW)::JSONB);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_audit_evaluations
    AFTER INSERT OR UPDATE ON evaluations
    FOR EACH ROW EXECUTE FUNCTION audit_evaluations();

-- ============================================================
-- DATABASE ROLES & ROW-LEVEL SECURITY
-- ============================================================

-- Create roles
DO $$
BEGIN
    IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'rh_admin') THEN
        CREATE ROLE rh_admin;
    END IF;
    IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'rh_judge') THEN
        CREATE ROLE rh_judge;
    END IF;
    IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'rh_participant') THEN
        CREATE ROLE rh_participant;
    END IF;
    IF NOT EXISTS (SELECT FROM pg_roles WHERE rolname = 'rh_readonly') THEN
        CREATE ROLE rh_readonly;
    END IF;
END $$;

-- Admin: full access
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO rh_admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO rh_admin;

-- Judge: read all, write evaluations only
GRANT SELECT ON ALL TABLES IN SCHEMA public TO rh_judge;
GRANT INSERT, UPDATE ON evaluations TO rh_judge;

-- Participant: read own data, write own submissions
GRANT SELECT ON participants, submissions, stages, stage_progress, notifications TO rh_participant;
GRANT INSERT, UPDATE ON submissions TO rh_participant;
GRANT INSERT, UPDATE ON notifications TO rh_participant;

-- Readonly: for support/reporting
GRANT SELECT ON ALL TABLES IN SCHEMA public TO rh_readonly;

-- Enable Row-Level Security on sensitive tables
ALTER TABLE submissions ENABLE ROW LEVEL SECURITY;
ALTER TABLE evaluations ENABLE ROW LEVEL SECURITY;
ALTER TABLE notifications ENABLE ROW LEVEL SECURITY;

-- RLS Policies
-- Participants can only see their own submissions
CREATE POLICY participant_own_submissions ON submissions
    FOR ALL TO rh_participant
    USING (participant_id IN (
        SELECT p.participant_id FROM participants p
        JOIN users u ON p.user_id = u.user_id
        WHERE u.email = current_user
    ));

-- Judges can see all submissions but only edit their own evaluations
CREATE POLICY judge_view_all_submissions ON submissions
    FOR SELECT TO rh_judge
    USING (TRUE);

CREATE POLICY judge_own_evaluations ON evaluations
    FOR ALL TO rh_judge
    USING (judge_id IN (
        SELECT j.judge_id FROM judges j
        JOIN users u ON j.user_id = u.user_id
        WHERE u.email = current_user
    ));

-- Users can only see their own notifications
CREATE POLICY user_own_notifications ON notifications
    FOR ALL TO rh_participant
    USING (user_id IN (
        SELECT user_id FROM users WHERE email = current_user
    ));

-- Admin bypasses RLS
ALTER TABLE submissions FORCE ROW LEVEL SECURITY;
ALTER TABLE evaluations FORCE ROW LEVEL SECURITY;

COMMENT ON TABLE users IS 'Central identity store for all platform users (admins, judges, participants, support)';
COMMENT ON TABLE stages IS 'Competition rounds/stages with dates and scoring info';
COMMENT ON TABLE participants IS 'Registered competition participants with profile details';
COMMENT ON TABLE judges IS 'Judge profiles linked to users with evaluation privileges';
COMMENT ON TABLE submissions IS 'Task submissions made by participants per stage';
COMMENT ON TABLE evaluations IS 'Judge scores and feedback on submissions';
COMMENT ON TABLE stage_progress IS 'Tracks participant qualification and ranking per stage';
COMMENT ON TABLE reports IS 'Admin-generated analytics and summary reports stored as JSONB';
COMMENT ON TABLE audit_logs IS 'Immutable audit trail of all data-changing operations';
COMMENT ON TABLE notifications IS 'In-app notifications for all platform users';
