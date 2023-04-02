// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Contract{
    uint public data123;

    function setData(uint x) external {
        data123 = x;
    }

    function get() public view returns(uint) {
        return data123;
    }
}