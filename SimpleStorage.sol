// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {

    //declare an internal variable
    uint256 favoriteNumber;

    //store a number; transaction takes place
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view the stored number; no state change
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}
