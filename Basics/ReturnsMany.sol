// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract FunctionReturns{

    function returnMany() public pure returns(uint , bool){
        return (5,true);
    }

    function destructure() public pure{
        // (uint x, bool b) = returnMany();
        (,bool b) = returnMany();
    }
}