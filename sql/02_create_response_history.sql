CREATE TABLE response_history(
    inquiry_id BIGINT NOT NULL REFERENCES inquiry(inquiry_id) ON DELETE CASCADE,
    response_history_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    response_history_body TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);