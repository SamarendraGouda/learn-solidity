// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Ownable{

    address public owner;
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not Owner");
        _;
    }

    function setNewOwner(address _target) external onlyOwner {
        require(_target != address(0), "Null Address is not allowed!");
        owner = _target;
    }

}