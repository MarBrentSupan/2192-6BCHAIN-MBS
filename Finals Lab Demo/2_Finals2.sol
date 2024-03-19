//Mar Brent Supan
//WD-401

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract SelfDestruct{
    event Deposit(uint amount);
    event Withdraw(uint amout);
    address public owner = msg.sender;

    receive() external payable { 
        emit Deposit(msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner, "Not Owner!");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}
contract SendEther{
    constructor() payable  {}

    receive() external payable { }

    function sendViaTransfer(address payable _to) external payable{
        _to.transfer(100);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(100);
        require(sent, "Sending failed.");
    }

    function sendViaCall(address payable _to) external payable {
        (bool success, ) = _to.call{value:100}("");
        require(success, "Sending failed.");
    }
}

contract ReceiveEther{
    event Log(uint amount, uint gas);

    receive() external payable { 
        emit Log(msg.value, gasleft());
    }
}

// The SelfDestruct contract manages ether deposits and withdrawals, emitting events for transparency and ensuring ownership control. 
// Upon receiving ether, it emits a Deposit event and allows the owner to withdraw funds via a withdraw function, triggering a Withdraw 
// event. Utilizing self-destruct, the contract securely transfers remaining funds to the owner upon destruction. SendEther facilitates 
// ether transfers through various methods, while ReceiveEther logs received ether details, enhancing transaction transparency and 
// security across these contracts.