// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public SimpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        SimpleStorageArray.push(simpleStorage);
    }
    function sfStore(uint256 _ssIndex, uint256 _ssNumber) public {
        SimpleStorage(address(SimpleStorageArray[_ssIndex])).store(_ssNumber);
    }

    function sfGet(uint256 _ssIndex) public view returns (uint256){
        return SimpleStorage(address(SimpleStorageArray[_ssIndex])).retrieve();
    }
}