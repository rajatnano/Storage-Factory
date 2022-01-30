//Program to make a storage factory in order to deploy many SimpleStorage contracts

// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";
/*Make sure "SimpleStorage.sol" and "StorageFactory.sol" are in same folder
Equivalent to copy pasting whole "SimpleStorage.sol" contract*/

contract StorageFactory {

    SimpleStorage[] simpleStorageArray;

    function createSimpleStorageContract() public {

        SimpleStorage _simpleStorage = new SimpleStorage();
        /*
        1. Creates a new object of type SimpleStorage contract named _simpleStorage.
        2. It is a state change Tx on the blockchain (Orange).
        */

        simpleStorageArray.push(_simpleStorage);
        /*
        Everytime "createSimpleStorageContract" is called,
        a new SimpleStorage contract is created and pushed to 
        "simpleStorageArray"
        */

        
    }

    //^^^^^^^^A contract is deployed inside another contract^^^^^^^^^^//


    //-------We now interact with functions of SimpleStorage.sol------//

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

            SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
            
            return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();

    }
    
}
