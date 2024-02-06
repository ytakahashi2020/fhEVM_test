// SPDX-License-Identifier: BSD-3-Clause-Clear

pragma solidity ^0.8.20;

import "../lib/TFHE.sol";

contract CalculateTest {
    euint8 value1;
    euint8 value2;
    

    function store(bytes calldata encryptedAmount) public{
        store(TFHE.asEuint8(encryptedAmount));
    }

    function store(euint8 value) public {
        value1 = value;
    }


    function add(bytes calldata encryptedAmount) public {
        add(TFHE.asEuint8(encryptedAmount));
    }

    function add(euint8 value) public {
        value2 = TFHE.add(value2, value);
    }


    function decrypt() public view returns (uint8) {
        return TFHE.decrypt(value1);
    }

    function decrypt2() public view returns (uint8) {
        return TFHE.decrypt(value2);
    }
}