// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

// Importing the SimpleStorage contract
import "./SimpleStorage.sol";

// Define the StorageFactory contract
contract StorageFactory {
    // Array to hold addresses of SimpleStorage contracts
    SimpleStorage[] public simpleStorageArray;

    // Function to create a new SimpleStorage contract
    function createSimpleStorage() public {
        // Create a new instance of SimpleStorage
        SimpleStorage a = new SimpleStorage();
        // Add the new instance to the simpleStorageArray
        simpleStorageArray.push(a);
    }

    // Function to get the length of the simpleStorageArray
    function getLength() public view returns (uint) {
        // Return the number of SimpleStorage contracts created
        return simpleStorageArray.length;
    }

    // Function to store a value in a specific SimpleStorage contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Get the SimpleStorage instance at the given index
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // Call the store function of the SimpleStorage instance with the provided number
        simpleStorage.store(_simpleStorageNumber);
                //? or 
        //! return simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber)
    }

    // Function to retrieve a value from a specific SimpleStorage contract
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // Get the SimpleStorage instance at the given index
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        // Call the retrieve function of the SimpleStorage instance and return the result
        return simpleStorage.retrieve();
        //? or 
        //! return simpleStorageArray[_simpleStorageIndex].retrieve()
    }

    // Function to get the addresses of all SimpleStorage contracts
    function getSimpleStorageAddresses() public view returns (SimpleStorage[] memory) {
        // Return the array containing the addresses of all SimpleStorage contracts
        return simpleStorageArray;
    }
}