// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2  <0.9.0;

contract Dework{
    uint256 userVisited = 0 ;
    bool hasSignedIn = false ;
    function greetUser() public pure returns(string memory){
        return "Welcome to Dework" ;
    } 
    function updateUser() public {
        if(hasSignedIn){
            userVisited = userVisited + 1 ;
        }
    }
    function totalUsers() public view returns(uint256){
        return userVisited ;
    }

    
}