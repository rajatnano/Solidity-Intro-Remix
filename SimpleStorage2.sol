//this program discusses non-state change functions "view" and "pure"

pragma solidity ^0.6.0;

contract SimpleStorage{

    uint256 favoriteNumber;

    function store(uint256 _favotiteNumber) public {
        favoriteNumber = _favotiteNumber;
    }

    //we can create "public" function and name it retrieve to "view" (blue) our stored value
    //if "view" is not specified then it acts as a trasaction (orange)    
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    //"view" and "pure" are non-state change functions (blue) i.e. only see the data 
    //it is only when changing state of the data we need to make a transaction (orange)
    //"pure" functions are purely for doing some kind of math

    
    function double(uint256 newNumber) public pure returns(uint256){
        return newNumber = 2*newNumber;
    }

    //color of "double" function will be blue since its a "pure" function i.e. non-state change
    //it will do the calculation for us to see but will not change the state on the blockchain


}
