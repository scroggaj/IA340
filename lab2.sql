-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS ""Professor Table""
(
    p_email VARCHAR(50) NOT NULL,
    p_name VARCHAR(50) NOT NULL,
    office VARCHAR(10) NOT NULL UNIQUE,
    column INTEGER,
    PRIMARY KEY(p_email)
);

CREATE TABLE IF NOT EXISTS ""Student Table ""
(
    s_email VARCHAR(50) NOT NULL,
    s_name VARCHAR(50) NOT NULL,
    major VARCHAR(10) NOT NULL,
    PRIMARY KEY(s_email)
);

CREATE TABLE IF NOT EXISTS ""Course Table ""
(
    c_number VARCHAR(50) NOT NULL,
    c_name VARCHAR(50) NOT NULL,
    room VARCHAR(10) NOT NULL,
    p_email VARCHAR(50) NOT NULL,
    PRIMARY KEY(c_number)
);

CREATE TABLE IF NOT EXISTS ""Enroll Table ""
(
    c_number VARCHAR(50) NOT NULL,
    s_email VARCHAR(50) NOT NULL,
    PRIMARY KEY(c_number, s_email)
);


-- Create FKs
ALTER TABLE "Course Table "
    ADD    FOREIGN KEY (p_email)
    REFERENCES "Professor Table"(p_email)
    MATCH SIMPLE
;
    
ALTER TABLE "Enroll Table "
    ADD    FOREIGN KEY (c_number)
    REFERENCES "Course Table "(c_number)
    MATCH SIMPLE
;
    
ALTER TABLE "Enroll Table "
    ADD    FOREIGN KEY (s_email)
    REFERENCES "Student Table "(s_email)
    MATCH SIMPLE
;
    

-- Create Indexes

