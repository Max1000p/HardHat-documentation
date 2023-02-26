// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/access/Ownable.sol";


contract SimpleStorage is Ownable{
    uint s_favoriteNumber;

    constructor(uint _x){
        s_favoriteNumber = _x;
    }

    function setFavoriteNumber(uint _x) external onlyOwner {
        s_favoriteNumber = _x;
    }

    function getFavoriteNumber() external view returns(uint){
        return s_favoriteNumber;
    }

}