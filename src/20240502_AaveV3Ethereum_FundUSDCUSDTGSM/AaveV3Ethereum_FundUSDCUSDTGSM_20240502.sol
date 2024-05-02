// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IProposalGenericExecutor} from 'aave-helpers/interfaces/IProposalGenericExecutor.sol';
import {AaveV3Ethereum, AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';

/**
 * @title Fund USDC & USDT GSM
 * @author karpatkey_TokenLogic
 * - Snapshot: No snapshot for Direct-to-AIP
 * - Discussion: TODO
 */
contract AaveV3Ethereum_FundUSDCUSDTGSM_20240502 is IProposalGenericExecutor {
  uint256 public constant AMOUNT = 1_000_000e6;
  address public constant USDC_GSM = 0x0d8eFfC11dF3F229AA1EA0509BC9DFa632A13578;
  address public constant USDT_GSM = 0x686F8D21520f4ecEc7ba577be08354F4d1EB8262;

  function execute() external {
    AaveV3Ethereum.COLLECTOR.transfer(AaveV3EthereumAssets.USDC_A_TOKEN, address(this), AMOUNT);
    AaveV3Ethereum.COLLECTOR.transfer(AaveV3EthereumAssets.USDT_A_TOKEN, address(this), AMOUNT);

    AaveV3Ethereum.POOL.withdraw(AaveV3EthereumAssets.USDC_UNDERLYING, type(uint256).max, USDC_GSM);
    AaveV3Ethereum.POOL.withdraw(AaveV3EthereumAssets.USDT_UNDERLYING, type(uint256).max, USDT_GSM);
  }
}
