// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.19;
pragma abicoder v2;

import {TransferHelper} from "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract AdminAirdrop is Ownable {
    constructor() {}

    function airdrop(address token, address[] calldata _recipients, uint256[] calldata _values) external onlyOwner {
        require(_recipients.length == _values.length);
        for (uint256 i = 0; i < _values.length; i++) {
            TransferHelper.safeTransfer(token, _recipients[i], _values[i]);
        }
    }

    function withdrawTokens(address token, address to, uint256 tokenAmount) external onlyOwner {
        IERC20(token).transfer(to, tokenAmount);
    }
}
