// SPDX-License-Identifier: MIT
//Mar Brent B. Supan
//Wd-401
pragma solidity ^0.8.7;

contract ValueTypes {
    bool public b = true;
    uint public u = 123;

    int public i = 123;

    int public minInt = type(int).min;
    int public MaxInt = type(int).max;
    address public addr = 0x2B2Cc01d1d21432E49F9f2c200A0082086F37868;
    bytes32 public b32 = 0x498c622fcd22512974ccf038232f6738a3114e4c6583b07445e14bc062c37d48;
    }