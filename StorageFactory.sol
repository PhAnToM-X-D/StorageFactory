// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    address[] public simpleStorageArray;
    SimpleStorage simpleStorage;
    function deploy() public {
        simpleStorage = new SimpleStorage();
        simpleStorageArray.push(address(simpleStorage));
    }

}