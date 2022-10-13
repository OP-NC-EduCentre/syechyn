DROP TABLE Furniture CASCADE CONSTRAINTS;
DROP TABLE Technique CASCADE CONSTRAINTS;
DROP TABLE Student CASCADE CONSTRAINTS;
DROP TABLE Room CASCADE CONSTRAINTS;
DROP TABLE Hostel CASCADE CONSTRAINTS;

CREATE TABLE Hostel(
	Hostel_ID NUMBER(3),
	adress VARCHAR(30),
	rating NUMBER(4,2),
	amount_of_floors NUMBER(1),
	amount_of_rooms NUMBER(2)
);

CREATE TABLE Room(
	Room_ID NUMBER(5),
	Hostel_ID NUMBER(3),
	room_number NUMBER(2),
	area NUMBER(3),
	inspection_date DATE,
	amount_of_windows NUMBER(1),
	max_amount_of_students NUMBER(1)
);

CREATE TABLE Student(
	Student_ID NUMBER(9),
	Room_ID NUMBER(5),
	name VARCHAR(50),
	faculty VARCHAR(50)
);

CREATE TABLE Technique(
	Technique_ID NUMBER(5),
	Room_ID NUMBER(5),
	fridge NUMBER(1), -- bool
	microwave NUMBER(1), -- bool
	TV NUMBER(1) -- bool
);

CREATE TABLE Furniture(
	Furniture_ID NUMBER(5),
	Room_ID NUMBER(5),
	amount_of_beds NUMBER(1),
	amount_of_tables NUMBER(1),
	amount_of_wardrobes NUMBER(1),
	amount_of_bedsideTables NUMBER(1)
);
