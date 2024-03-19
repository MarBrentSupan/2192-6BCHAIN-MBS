//Mar Brent Supan
//WD-401
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public immutable creationTime;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;

    event EtherReceived(address sender, uint256 amount);
    event EtherSent(address recipient, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() payable {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        emit EtherReceived(msg.sender, msg.value);
        remainingEth += msg.value;
    }

    function withdraw(uint256 _amount) external onlyOwner {
        require(_amount <= address(this).balance, "Insufficient balance");
        owner.transfer(_amount);
        remainingEth -= _amount;
        emit EtherSent(owner, _amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function sendEther(address payable _recipient, uint256 _amount) external onlyOwner {
        require(_amount <= address(this).balance, "Insufficient balance");
        _recipient.transfer(_amount);
        remainingEth -= _amount;
        emit EtherSent(_recipient, _amount);
    }

    function destroy() external onlyOwner {
        selfdestruct(owner);
    }

    function receiveAndEmit() external payable {
        emit EtherReceived(msg.sender, msg.value);
        remainingEth += msg.value;
    }
}
