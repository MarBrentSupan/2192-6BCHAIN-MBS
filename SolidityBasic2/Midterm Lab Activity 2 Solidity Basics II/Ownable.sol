// Mar Brent Supan
// WD-401

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Ownable{
    address public owner;
    event OwnershipTransferred(address indexed previousOwner, address indexed _newOwner);
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "not owner!");
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), "invalid new address");
        emit OwnershipTransferred(owner, _newOwner);
        owner = _newOwner;
        }
}
    contract MyContract is Ownable{
        uint256 public someValue;

        function setSomeValue(uint256 newValue) external  onlyOwner {
            someValue = newValue;
        }
    }