

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

-- Vehicles

CREATE TABLE vehicle_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    description VARCHAR(30)
);

CREATE TABLE vehicle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    v_type INTEGER NOT NULL,
    license_plate VARCHAR(7) NOT NULL,
    color VARCHAR(30),
    brand VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    active BOOLEAN DEFAULT 1,
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (v_type) REFERENCES vehicle_type(id)
);

INSERT INTO vehicle_type (description) VALUES ("motorcycle");
INSERT INTO vehicle_type (description) VALUES ("car");
INSERT INTO vehicle_type (description) VALUES ("truck");
INSERT INTO vehicle_type (description) VALUES ("SUV");

INSERT INTO vehicle (
    v_type, 
    license_plate, 
    color, 
    brand, 
    model, 
    user_id
)VALUES(
    4,
    "poiu654",
    "white",
    "Mitsubishi",
    "Outlander",
    1
);

INSERT INTO vehicle (
    v_type, 
    license_plate, 
    color, 
    brand, 
    model, 
    user_id
)VALUES(
    3,
    "qwer987",
    "black",
    "Chevy",
    "Silverado",
    3
);

INSERT INTO vehicle (
    v_type, 
    license_plate, 
    color, 
    brand, 
    model, 
    user_id
)VALUES(
    2,
    "321asdf",
    "blue",
    "Ford",
    "Focus",
    2
);

INSERT INTO vehicle (
    v_type, 
    license_plate, 
    color, 
    brand, 
    model, 
    user_id
)VALUES(
    1,
    "asdf3215",
    "red",
    "honda",
    "something",
    1
);

SELECT user.last_name,
user.first_name,
user.hobbies,
user.active,
vehicle.license_plate,
vehicle.color,
vehicle_type.description,
vehicle.brand,
vehicle.model
FROM user
INNER JOIN vehicle On user.id = vehicle.user_id
INNER JOIN vehicle_type ON vehicle.v_type = vehicle_type.id;