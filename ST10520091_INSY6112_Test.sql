CREATE DATABASE Question3DB;
USE Question3DB;

-- Question 3.1

CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(100),
    MemberEmail VARCHAR(100)
);

-- Question 3.2

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    MemberID INT,
    LoanNumber VARCHAR(20),
    LoanDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

-- Question 3.3

INSERT INTO Member (MemberID, MemberName, MemberEmail)
VALUES (1, 'Debbie Duncan', 'dduncan@yahoo.com');

INSERT INTO Loan (LoanID, LoanNumber, MemberID, LoanDate)
VALUES (1, 'L112233', 1, '2026-02-14');

-- Question 3.4

UPDATE Loan
SET LoanDate = '2026-02-13'
WHERE LoanID = 1;

-- Question 3.5

DELETE FROM Loan
WHERE LoanID = 1;


