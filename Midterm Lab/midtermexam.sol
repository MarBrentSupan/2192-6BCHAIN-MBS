//Mar Brentt Supan
//WD-401
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradingSystem {
address public owner;

enum Status { Pass, Fail }

struct Student {
string name;
uint prelimGrade;
uint midtermGrade;
uint finalGrade;
uint totalGrade;
Status status;
}

Student public currentStudent;

event GradeComputed(string studentName, Status status);

modifier onlyOwner() {
require(msg.sender == owner, "Unauthorized access");
_;
}

modifier validGrade(uint grade) {
require(grade >= 0 && grade <= 100, "Grade out of range");
_;
}

constructor() {
owner = msg.sender;
}

function setName(string calldata _name) external {
currentStudent.name = _name;
}

function setPrelimGrade(uint _grade) public onlyOwner validGrade(_grade) {
currentStudent.prelimGrade = _grade;
}

function setMidtermGrade(uint _grade) public onlyOwner validGrade(_grade) {
currentStudent.midtermGrade = _grade;
}

function setFinalGrade(uint _grade) public onlyOwner validGrade(_grade) {
currentStudent.finalGrade = _grade;
}

function computeGrade() public onlyOwner {
uint total = (currentStudent.prelimGrade + currentStudent.midtermGrade + currentStudent.finalGrade) / 3;
currentStudent.totalGrade = total;
if (total >= 75) {
currentStudent.status = Status.Pass;
} else {
currentStudent.status = Status.Fail;
}
emit GradeComputed(currentStudent.name, currentStudent.status);
}

function name() public view returns (string memory) {
return currentStudent.name;
}

function prelimGrade() public view returns (uint) {
return currentStudent.prelimGrade;
}

function midtermGrade() public view returns (uint) {
return currentStudent.midtermGrade;
}

function finalGrade() public view returns (uint) {
return currentStudent.finalGrade;
}

function gradeStatus() public view returns (Status) {
return currentStudent.status;
}
}