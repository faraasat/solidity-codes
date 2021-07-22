// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0;

contract GlobalTestingPractice {
    event valUint(uint256);
    event valBytes(bytes);
    event valAddress(address);
    event valString(string);

    function gloabalTesting() public view returns (address) {
        return block.coinbase;
    }

    function eventTesting() public {
        emit valUint(block.gaslimit);
        emit valAddress(msg.sender);
        emit valAddress(tx.origin);
        emit valBytes(msg.data);
    }
}
