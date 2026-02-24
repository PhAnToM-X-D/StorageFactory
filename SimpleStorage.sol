// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleStorage {

    mapping(string => uint256) private nameToFavoriteNumber;    

    function set(uint256 x, string memory name) public {
        nameToFavoriteNumber[name] = x;
    }

    function get(string memory name) public view returns (uint256) {
        return nameToFavoriteNumber[name];
    }
}
/*
This contract stores your favourite number based on your name. 
You can set your favourite number by calling the set function with your 
name and number, and retrieve it later using the get function with your name.
 */