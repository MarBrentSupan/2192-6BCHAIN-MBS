// SPDX-License-Identifier: MIT
//Mar Brent B. Supan
//Wd-401
pragma solidity ^0.8.20;

contract FunctionIntro{
    function add(uint x, uint y) external pure returns (uint){
        return (x + y);
    }

    function sub(uint x, uint y) external pure returns (uint){
        return (x - y);
    }
    function multiple(uint x, uint y) external pure returns (uint){
        return (x * y);
    }
    function div(uint x, uint y) external pure returns (uint){
        return (x / y);
    }
}