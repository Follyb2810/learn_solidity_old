// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract SimpleStorage {
    uint256 public favouriteNum;

    struct People {
        string name;
        uint256 favouriteNum;
    }
    mapping (string => uint256) public  peopleFavouriteNums;
    // Initialize an instance of People
    People public peopleList = People({name: "folly", favouriteNum: 2});

    // arry
        People[] public people;
    //! virual virtual to make the derived be able to override
    function store(uint256 _favnum) public virtual {
        favouriteNum += _favnum;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNum;
    }

    function add() public pure returns (uint256) {
        return 1 + 1;
    }

    function addPerson (string memory _name, uint256 _favnum) public {
        people.push(People(_name, _favnum));
        peopleFavouriteNums[_name] = _favnum;
    }
}