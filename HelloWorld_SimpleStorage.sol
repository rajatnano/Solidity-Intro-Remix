// SPDX-License-Identifier: GPL-3.0

//the following code is "Hello World" program for Solidity 

pragma solidity ^0.6.0;
//runs in any version above 0.6.0 but below 0.7.0


//name and initiate a contract
contract SimpleStorage {  
    
    //declare variable; default value will be take as 0; type "internal" by default
    uint256 public favoriteNumber;  

    //declare a public function and parameter
    function store(uint256 _favotiteNumber) public { 
        //function operation; store double of input number
        favoriteNumber = 2*_favotiteNumber;
    }
}

/*deployed contract
Orange (store) --> not free operation a.k.a transaction on blockchain; cost gas
Blue (favoriteNumber) --> view data from blockchain i.e. does cost gas
*/
