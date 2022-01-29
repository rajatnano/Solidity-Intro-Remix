// SPDX-License-Identifier: MIT

/*Program to store list of people with their name and favorite number
with added functionality of searching a person's favortie number using their name*/

pragma solidity ^0.8.0;

contract SimpleStorageList {

    //initiate a structure "People" to store name and favortie number
    struct People {
        string name;
        uint256 favoriteNumber;
    }

    //People[] creates a public dynamic array object "people" of struct People; People[10] will create a static array with max 10 entries
    //keeping it public allows user to search array elements with the help of index value
    People[] public people;

    //using mapping function to search favoriteNumber using name
    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({name: _name, favoriteNumber: _favoriteNumber}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    /*string in solidity is an array object and not a datatype 
    hence we can store it's contents in memory or storage 
    ..memory stores only for/while execution
    ..storage stores forever*/
}
