// SPDX-License-Identifier: MIT
//Mar Brent B. Supan
//Wd-401
pragma solidity ^0.8.7;

contract GlobalVariables{
    function globalVars() external view returns (address, uint, uint, address, uint, address){
        address sender = msg.sender;
        uint timestap = block.timestamp;
        uint blockNum = block.number;
        address origin = tx.origin;
        uint gasLimit = block.gaslimit;
        address coinbase =  block.coinbase;
        return  (sender, timestap, blockNum, origin, gasLimit, coinbase);
    }
}