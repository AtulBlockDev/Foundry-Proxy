//SPDX-License-Identifier: MIT

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

pragma solidity ^0.8.18;

contract BoxV2 is UUPSUpgradeable {
    uint256 number;

    function setnumber(uint256 _value) public {
        number = _value;
    }

    function getNumber() external view returns (uint256) {
        return number;
    }

    function version() external pure returns (uint256) {
        return 2;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
