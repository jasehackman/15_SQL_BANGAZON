PRAGMA foreign_keys = ON;

DELETE FROM SuperheroPower;

DROP TABLE IF EXISTS Superhero;


CREATE TABLE 'Employee'(
  `EmployeeId`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Name`    TEXT NOT NULL,
  `Supervisor`    INTEGER NOT NULL DEFAULT 1 CHECK (Delivered BETWEEN 0 AND 1),
  `Computer_Employee_id`   INTEGER NOT NULL,
  FOREIGN KEY('Computer_Employee_id')
  REFERENCES 'Computer_Employee' ('Computer_Employee_id')
  ON DELETE CASCADE
 );

CREATE TABLE 'Computer'(
  `Computer_id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Purchase_Date` TEXT NOT NULL,
  `Decommissioned_Date` TEXT NOT NULL,
  `Computer_Employee_id`   INTEGER NOT NULL,
  FOREIGN KEY('Computer_Employee_id')
  REFERENCES 'Computer_Employee' ('Computer_Employee_id')
  ON DELETE CASCADE
 );

 CREATE TABLE 'Computer_Employee'(
  `Computer_Employee_id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Current` INTEGER NOT NULL DEFAULT 1 CHECK (Delivered BETWEEN 0 AND 1),
  `Computer_id` INTEGER NOT NULL,
  `Employee_id` INTEGER NOT NULL,
  FOREIGN KEY('Computer_id')
  REFERENCES 'Computer' ('Computer_id')
  ON DELETE CASCADE,
  FOREIGN KEY('Employee_id')
  REFERENCES 'Employee' ('Employee_id')
  ON DELETE CASCADE
 );

 CREATE TABLE 'Department'(
  `Department_id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Name`    TEXT NOT NULL,
  `Budget`    INTEGER NOT NULL DEFAULT 1 CHECK (Delivered BETWEEN 0 AND 1),
  `Employee_id`   INTEGER NOT NULL,
  FOREIGN KEY('Employee_id')
  REFERENCES 'Employee' ('Employee_id')
  ON DELETE CASCADE
 );