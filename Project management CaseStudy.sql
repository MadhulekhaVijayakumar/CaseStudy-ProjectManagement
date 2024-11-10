--Database Creation
create database ProjectManage

--Navigate to ProjectManage
use ProjectManage

--Schema Design
--Project table creation
CREATE TABLE Project (
    id INT PRIMARY KEY,
    ProjectName VARCHAR(255) NOT NULL,
    [Description] VARCHAR(MAX),
    [Start_date] DATE,
    [Status] VARCHAR(20)  NOT NULL
)

--Employee table creation
CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name NVARCHAR(255) NOT NULL,
    Designation NVARCHAR(100),
    Gender NVARCHAR(20),
    Salary DECIMAL(10, 2),
    Project_id INT,
	FOREIGN KEY (Project_id) REFERENCES Project(id)
)

--Task table creation
CREATE TABLE Task (
    task_id INT PRIMARY KEY,
    task_name NVARCHAR(255) NOT NULL,
    project_id INT,
    employee_id INT,
    Status NVARCHAR(20) CHECK (Status IN ('Assigned', 'Started', 'Completed')) NOT NULL,
    FOREIGN KEY (project_id) REFERENCES Project(id),
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
)

