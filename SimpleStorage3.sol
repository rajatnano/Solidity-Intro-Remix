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

    //People[] creates dynamic array; People[10] will create a static array with max 10 entries 
    People[] public people;

    //to search favoriteNumber using people's name
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
