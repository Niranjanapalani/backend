CREATE TABLE users (
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    role VARCHAR(255),
    dob DATE,
    gender VARCHAR(10),
    address TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE jobs (
    id INT AUTO_INCREMENT,
    title VARCHAR(255),
    status VARCHAR(50),
    description TEXT,
    yoe INT,
    expiration_at DATE,
    created_at TIMESTAMP,
    created_by INT,
    PRIMARY KEY (id)
);

CREATE TABLE applications (
    id INT AUTO_INCREMENT,
    user_id INT,
    job_id INT,
    created_at TIMESTAMP,
    status VARCHAR(50),
    remarks TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (job_id) REFERENCES jobs(id)
);