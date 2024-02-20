// Mar Brent Supan
// WD-401

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functionModifier {
    mapping(address => uint256) public ValueMapping;
    

    modifier nonZeroValue(uint256 _value){
        require(_value !=0, "Value cannot be zero");
        _;
    }

    modifier  valueHasBeenSet(){
        require(ValueMapping[msg.sender] != 0, "no value for sender");
        _;
    }
    function setValue(uint256 _value) public nonZeroValue(_value) {
        ValueMapping[msg.sender] = _value;
        
    }

    function getValue() public view valueHasBeenSet returns (uint256) {
        return  ValueMapping[msg.sender];
    }
}