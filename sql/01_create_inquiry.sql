CREATE TABLE inquiry (
	inquiry_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, 
	title VARCHAR(100) NOT NULL,
	body TEXT NOT NULL,
    status VARCHAR(10) NOT NULL,
	received_at TIMESTAMP NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	
    CONSTRAINT chk_inquiry_status
        CHECK (status IN ('未対応', '対応中', '対応済み'))
);