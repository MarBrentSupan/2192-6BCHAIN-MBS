//Mar Brent Supan
//WD-401
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable { }

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "Not owner");
        require(address(this).balance >= _amount, "Insufficient balance");
        owner.transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

