// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IProposalGenericExecutor} from 'aave-helpers/interfaces/IProposalGenericExecutor.sol';
import {AaveV3Ethereum, AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';

/**
 * @title Fund USDC & USDT GSM
 * @author karpatkey_TokenLogic
 * - Snapshot: TODO
 * - Discussion: https://governance.aave.com/t/arfc-fund-usdc-usdt-gsm/17566
 */
contract AaveV3Ethereum_FundUSDCUSDTGSM_20240502 is IProposalGenericExecutor {
  uint256 public constant AMOUNT = 1_000_000e6;
  address public constant ACL_SAFE = 0x205e795336610f5131Be52F09218AF19f0f3eC60;

  function execute() external {
    AaveV3Ethereum.COLLECTOR.approve(AaveV3EthereumAssets.USDC_UNDERLYING, ACL_SAFE, AMOUNT);
    AaveV3Ethereum.COLLECTOR.approve(AaveV3EthereumAssets.USDT_UNDERLYING, ACL_SAFE, AMOUNT);
  }
}
