

-- id, first_name, last_name, hobbies
-- CREATE USERS TABLE

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    hobbies TEXT,
    active BOOLEAN NOT NULL DEFAULT 1
);

-- INSERT DATA --

INSERT INTO user (first_name, last_name, hobbies) VALUES ("Christopher", "Finster", "Escaping from Tarkov");

-- READ DATA --

SELECT * FROM user;

-- CREATE ANOTHER RECORD --

INSERT INTO user (
    first_name, 
    last_name, 
    hobbies
) VALUES (
    "Mason", 
    "Finster", 
    "Watching Cartoons"
);