CREATE TABLE IF NOT EXISTS hrschema.employee (
    id VARCHAR(50) PRIMARY KEY DEFAULT gen_random_uuid(),
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    boss VARCHAR(50),
    type VARCHAR(10),
    title VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS hrschema.period (
    id VARCHAR(50) PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) CONSTRAINT period_unique_name UNIQUE
);

CREATE TABLE IF NOT EXISTS hrschema.goal (
    id VARCHAR(50) PRIMARY KEY DEFAULT gen_random_uuid(),
    type VARCHAR(10),
    creator VARCHAR(50) REFERENCES hrschema.employee(id),
    name VARCHAR(50),
    description VARCHAR(1000)
);

CREATE TABLE IF NOT EXISTS hrschema.review (
    id VARCHAR(50) PRIMARY KEY DEFAULT gen_random_uuid(),
    employee_id VARCHAR(50) REFERENCES hrschema.employee(id),
    period_id VARCHAR(50) REFERENCES hrschema.period(id),
    status VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS hrschema.review_goal (
    id VARCHAR(50) PRIMARY KEY DEFAULT gen_random_uuid(),
    review_id VARCHAR(50),
    goal_id VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS hrschema.rating (
    id VARCHAR(50) PRIMARY KEY DEFAULT gen_random_uuid(),
    review_goal_id VARCHAR(50),
    rating INTEGER,
    comment VARCHAR(1000)
);
