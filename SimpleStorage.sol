// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    // Favorite number variable
    uint256 private favoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    // Store a favorite number
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // Retrieve the stored favorite number
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // Add a person to the list
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
}
