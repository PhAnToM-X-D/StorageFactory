// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;
    function deploy() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    function Sf_set (uint256 _index, uint256 _favoriteNumber, string memory _name) public {
        simpleStorageArray[_index].set(_favoriteNumber, _name);
    }
    function Sf_get (uint256 _index, string memory _name) public view returns (uint256) {
        return simpleStorageArray[_index].get(_name);
    }
}