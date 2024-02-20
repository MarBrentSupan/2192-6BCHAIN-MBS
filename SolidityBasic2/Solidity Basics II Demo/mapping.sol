// Mar Brent Supan
// WD-401

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    mapping(address => uint256) public ValueMapping;

    function setValue(uint256 _value) public {
        ValueMapping[msg.sender] = _value;
    }

    function getValue() public view returns (uint256) {
        return  ValueMapping[msg.sender];
    }
}