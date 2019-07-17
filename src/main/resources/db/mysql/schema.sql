CREATE DATABASE IF NOT EXISTS test2;

ALTER DATABASE test2
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

use test2;
DROP TABLE IF EXISTS task;
CREATE TABLE task(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(45),
    for_person VARCHAR(45),
    from_person VARCHAR(45),
    status VARCHAR(45));




