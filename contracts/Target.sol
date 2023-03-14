// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Target {
    address public timelockContract;

    constructor(address _timelock) {
        timelockContract = _timelock;
    }

    function test() external view {
        require(msg.sender == timelockContract, "Not Timelock");
    }

    function getTime() external view returns (uint256) {
        return block.timestamp + 100;
    }
}
