PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Courses (
        CourseId INTEGER PRIMARY KEY,
        CourseName TEXT,
        CreditHours INTEGER,
        DepartmentId INTEGER,
        FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
    );

CREATE TABLE Programs (
        ProgramId INTEGER PRIMARY KEY,
        ProgramName TEXT,
        DepartmentId INTEGER,
        FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
    );

CREATE TABLE Enrollments (
        EnrollmentId INTEGER PRIMARY KEY,
        StudentId INTEGER,
        CourseId INTEGER,
        EnrollmentDate DATE,
        Grade INTEGER,
        FOREIGN KEY (StudentId) REFERENCES Students(StudentId),
        FOREIGN KEY (CourseId) REFERENCES Courses(CourseId)
    );

CREATE TABLE Departments (
        DepartmentId INTEGER PRIMARY KEY,
        DepartmentName TEXT
    );

CREATE TABLE Classrooms (
        ClassroomId INTEGER PRIMARY KEY,
        Capacity INTEGER,
        Location INTEGER,
        DepartmentId INTEGER,
        FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
    );

CREATE TABLE Students (
        StudentId INTEGER PRIMARY KEY,
        FirstName TEXT,
        LastName TEXT,
        DateOfBirth DATE,
        Gender TEXT,
        Email TEXT,
        PhoneNumber TEXT,
        Tuition INTEGER,
        ProgramId INTEGER,
        FOREIGN KEY (ProgramId) REFERENCES Programs(ProgramId)
    );


CREATE TABLE Professors (
        ProfessorId INTEGER PRIMARY KEY,
        FirstName TEXT,
        LastName TEXT,
        DateOfBirth DATE,
        Gender TEXT,
        Email TEXT,
        PhoneNumber TEXT,
        Payment INTEGER,
        DepartmentId INTEGER,
        FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId)
    );

COMMIT;

