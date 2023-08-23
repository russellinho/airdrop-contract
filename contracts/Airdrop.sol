// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.19;
pragma abicoder v2;

import {TransferHelper} from "@uniswap/lib/contracts/libraries/TransferHelper.sol";

contract Airdrop {
    constructor() {}

    function airdrop(address token, address[] calldata _recipients, uint256[] calldata _values) external {
        require(_recipients.length == _values.length);
        for (uint256 i = 0; i < _values.length; i++) {
            TransferHelper.safeTransfer(token, _recipients[i], _values[i]);
        }
    }
}
