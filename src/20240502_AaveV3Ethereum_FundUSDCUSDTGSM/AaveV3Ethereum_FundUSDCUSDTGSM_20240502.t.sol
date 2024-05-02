// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3Ethereum, AaveV3EthereumAssets} from 'aave-address-book/AaveV3Ethereum.sol';
import {IERC20} from 'solidity-utils/contracts/oz-common/interfaces/IERC20.sol';

import 'forge-std/Test.sol';
import {ProtocolV3TestBase, ReserveConfig} from 'aave-helpers/ProtocolV3TestBase.sol';
import {AaveV3Ethereum_FundUSDCUSDTGSM_20240502} from './AaveV3Ethereum_FundUSDCUSDTGSM_20240502.sol';

/**
 * @dev Test for AaveV3Ethereum_FundUSDCUSDTGSM_20240502
 * command: make test-contract filter=AaveV3Ethereum_FundUSDCUSDTGSM_20240502
 */
contract AaveV3Ethereum_FundUSDCUSDTGSM_20240502_Test is ProtocolV3TestBase {
  AaveV3Ethereum_FundUSDCUSDTGSM_20240502 internal proposal;

  function setUp() public {
    vm.createSelectFork(vm.rpcUrl('mainnet'), 19783634);
    proposal = new AaveV3Ethereum_FundUSDCUSDTGSM_20240502();
  }

  /**
   * @dev executes the generic test suite including e2e and config snapshots
   */
  function test_defaultProposalExecution() public {
    uint256 usdcBalanceBefore = IERC20(AaveV3EthereumAssets.USDC_UNDERLYING).balanceOf(
      proposal.USDC_GSM()
    );
    uint256 usdtBalanceBefore = IERC20(AaveV3EthereumAssets.USDT_UNDERLYING).balanceOf(
      proposal.USDT_GSM()
    );

    executePayload(vm, address(proposal));

    uint256 usdcBalanceAfter = IERC20(AaveV3EthereumAssets.USDC_UNDERLYING).balanceOf(
      proposal.USDC_GSM()
    );
    uint256 usdtBalanceAfter = IERC20(AaveV3EthereumAssets.USDT_UNDERLYING).balanceOf(
      proposal.USDT_GSM()
    );

    assertApproxEqAbs(usdcBalanceBefore + proposal.AMOUNT(), usdcBalanceAfter, 1);
    assertApproxEqAbs(usdtBalanceBefore + proposal.AMOUNT(), usdtBalanceAfter, 1);
  }
}
