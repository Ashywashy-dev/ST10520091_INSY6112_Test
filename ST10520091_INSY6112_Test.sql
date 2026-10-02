CREATE DATABASE Question3DB;
USE Question3DB;

CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(100),
    MemberEmail VARCHAR(100)
);

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    MemberID INT,
    LoanNumber VARCHAR(20),
    LoanDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);

INSERT INTO Member (MemberID, MemberName, MemberEmail)
VALUES (1, 'Debbie Duncan', 'dduncan@yahoo.com');

INSERT INTO Loan (LoanID, LoanNumber, MemberID, LoanDate)
VALUES (1, 'L112233', 1, '2026-02-14');

UPDATE Loan
SET LoanDate = '2026-02-13'
WHERE LoanID = 1;

DELETE FROM Loan
WHERE LoanID = 1;


