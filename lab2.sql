-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS Professor
(
    p_email VARCHAR(50) NOT NULL,
    p_name VARCHAR(50) NOT NULL,
    office VARCHAR(10) NOT NULL UNIQUE,
    PRIMARY KEY(p_email)
);

CREATE TABLE IF NOT EXISTS Student
(
    s_email VARCHAR(50) NOT NULL,
    s_name VARCHAR(50) NOT NULL,
    major VARCHAR(10) NOT NULL,
    PRIMARY KEY(s_email)
);

CREATE TABLE IF NOT EXISTS Course
(
    c_number VARCHAR(50) NOT NULL,
    c_name VARCHAR(50) NOT NULL,
    room VARCHAR(10) NOT NULL,
    p_email VARCHAR(50) NOT NULL,
    PRIMARY KEY(c_number)
);

CREATE TABLE IF NOT EXISTS Enroll
(
    c_number VARCHAR(50) NOT NULL,
    s_email VARCHAR(50) NOT NULL,
    PRIMARY KEY(c_number, s_email)
);


-- Create FKs
ALTER TABLE Course
    ADD    FOREIGN KEY (p_email)
    REFERENCES Professor(p_email)
    MATCH SIMPLE
;
    
ALTER TABLE Enroll
    ADD    FOREIGN KEY (c_number)
    REFERENCES Course(c_number)
    MATCH SIMPLE
;
    
ALTER TABLE Enroll
    ADD    FOREIGN KEY (s_email)
    REFERENCES Student(s_email)
    MATCH SIMPLE
;
    

-- Create Indexes
