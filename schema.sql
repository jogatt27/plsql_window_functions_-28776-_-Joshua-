-- USERS TABLE
CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100),
    user_type VARCHAR2(20),
    department VARCHAR2(50),
    email VARCHAR2(100)
);
-- TECHNICIANS TABLE
CREATE TABLE technicians (
    technician_id NUMBER PRIMARY KEY,
    technician_name VARCHAR2(100),
    region VARCHAR2(50),
    experience_level VARCHAR2(30),
    hire_date DATE
);
-- TICKETS TABLE
CREATE TABLE tickets (
    ticket_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    technician_id NUMBER,
    issue_category VARCHAR2(50),
    ticket_date DATE,
    resolution_date DATE,
    status VARCHAR2(20),

    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id),

    CONSTRAINT fk_technician
        FOREIGN KEY (technician_id)
        REFERENCES technicians(technician_id)
);

-- USERS DATA

INSERT INTO users VALUES
(1, 'Alice Mukamana', 'Student', 'Computer Science', 'alice@auca.ac.rw');

INSERT INTO users VALUES
(2, 'John Niyonzima', 'Staff', 'Finance', 'john@auca.ac.rw');

INSERT INTO users VALUES
(3, 'Grace Uwimana', 'Student', 'IT', 'grace@auca.ac.rw');

INSERT INTO users VALUES
(4, 'Peter Habimana', 'Staff', 'HR', 'peter@auca.ac.rw');

INSERT INTO users VALUES
(5, 'Linda Nyirahabimana', 'Student', 'Business', 'linda@auca.ac.rw');


-- TECHNICIANS DATA

INSERT INTO technicians VALUES
(1, 'Eric N.', 'Main Campus', 'Senior',
 TO_DATE('2018-01-10','YYYY-MM-DD'));

INSERT INTO technicians VALUES
(2, 'Jean P.', 'Main Campus', 'Mid',
 TO_DATE('2020-03-15','YYYY-MM-DD'));

INSERT INTO technicians VALUES
(3, 'Kevin M.', 'Remote Campus', 'Junior',
 TO_DATE('2022-06-01','YYYY-MM-DD'));

INSERT INTO technicians VALUES
(4, 'Paul R.', 'Remote Campus', 'Mid',
 TO_DATE('2021-09-20','YYYY-MM-DD'));

-- TICKETS DATA

INSERT INTO tickets VALUES
(101, 1, 1, 'Network',
 TO_DATE('2024-01-05','YYYY-MM-DD'),
 TO_DATE('2024-01-06','YYYY-MM-DD'),
 'Resolved');

INSERT INTO tickets VALUES
(102, 2, 2, 'Software',
 TO_DATE('2024-01-10','YYYY-MM-DD'),
 TO_DATE('2024-01-12','YYYY-MM-DD'),
 'Resolved');

INSERT INTO tickets VALUES
(103, 3, 1, 'Hardware',
 TO_DATE('2024-02-01','YYYY-MM-DD'),
 TO_DATE('2024-02-03','YYYY-MM-DD'),
 'Resolved');

INSERT INTO tickets VALUES
(104, 1, 3, 'Access',
 TO_DATE('2024-02-10','YYYY-MM-DD'),
 NULL,
 'Open');

INSERT INTO tickets VALUES
(105, 4, 2, 'Network',
 TO_DATE('2024-03-05','YYYY-MM-DD'),
 TO_DATE('2024-03-06','YYYY-MM-DD'),
 'Resolved');

INSERT INTO tickets VALUES
(106, 5, 1, 'Software',
 TO_DATE('2024-03-15','YYYY-MM-DD'),
 TO_DATE('2024-03-17','YYYY-MM-DD'),
 'Resolved');

-- SAVE CHANGES
COMMIT;

