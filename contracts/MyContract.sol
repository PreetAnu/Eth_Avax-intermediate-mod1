// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract ErrorHandling {
    uint public num;

    function requireExamp(uint _i) public pure {
        require(_i > 0, "Input must be greater than zero");
    }

    function assertExamp() public view {
        assert(num == 0);
    }

    function revertExam(uint _i) public pure {
        if (_i == 42) {
            revert("Input must not be 42");
        }
    }
}
