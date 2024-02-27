//Mar Brent Supan
//WD-401
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;

    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner");
        _;
    }
    modifier nonZero(uint256 _value){
        require(_value > 0, "It should be more than 0");
        _;
    }

    modifier minor(uint256 _minorAge){
        require(_minorAge > 16, "You're a minor, you can't work!");
        _;
    }

    constructor(){
        owner = msg.sender;
    }

    function setAge(uint256 _age) public minor(_age){ 
        age = _age;
        }
    
    function setHrsWrk(uint256 _hoursWorked) public nonZero(_hoursWorked) {
        hoursWorked = _hoursWorked;
    }

    function setRate(uint256 _hourlyRate) public onlyOwner nonZero(_hourlyRate) {
        hourlyRate = _hourlyRate;
    }

    function calculateTotSal() public onlyOwner  {
        require(hourlyRate > 0 && hoursWorked > 0, "Hours of Rate and Hour of Work cannot be Zero");
        totalSalary = hoursWorked * hourlyRate;
    }
                                                                                                                                                                         
}