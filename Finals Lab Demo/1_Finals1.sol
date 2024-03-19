//Mar Brent SUpan
//WD-401
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract FallbackExample{
    event FallbackReceived(address sender, uint amount);
    event PaymentReceived(address payer, uint256 amount);

    fallback() external payable { 
        emit FallbackReceived(msg.sender, msg.value);
    }

    receive() external payable { 
        emit PaymentReceived(msg.sender, msg.value);
    }
}

// The FallbackExample contract defines two fallback functions: fallback() and receive(). The fallback() 
// function is triggered when the contract receives ether without data or when a call to a non-existent 
// function is made. It emits a FallbackReceived event, capturing the sender's address and the amount of 
// ether received. The receive() function is triggered when the contract receives ether directly, emitting 
// a PaymentReceived event with the sender's address and the received amount. Together, these functions 
// enable the contract to handle ether payments and fallback scenarios transparently.