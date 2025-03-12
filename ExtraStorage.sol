// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;
import './SimpleStorage.sol';

contract ExtraStorage is SimpleStorage{
    //! override 
    
    function store(uint256 _favnum) public override  {
        favouriteNum = 5 + _favnum;
    }
}