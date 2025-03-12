// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract FundMe{
    uint256 public minimumUsd = 50;
    function fund() public payable  {
        // require(msg.value >= 1e18,"isnt enough send 1e18"); // one eth (in wei) 1e9 and 1eth is 1e18 * 1*10**18
     //   require(msg.value >= minimumUsd,"minimum is 10 usd");
    }
}