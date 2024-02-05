// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AaveV3Arbitrum, AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';

import 'forge-std/Test.sol';
import {ProtocolV3TestBase, ReserveConfig} from 'aave-helpers/ProtocolV3TestBase.sol';
import {AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205} from './AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205.sol';

interface IEmissionManager {
  function getEmissionAdmin(address reward) external view returns (address);
}

/**
 * @dev Test for AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205
 * command: make test-contract filter=AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205
 */
contract AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205_Test is ProtocolV3TestBase {
  AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205 internal proposal;

  function setUp() public {
    vm.createSelectFork(vm.rpcUrl('arbitrum'), 177805822);
    proposal = new AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205();
  }

  /**
   * @dev executes the generic test suite including e2e and config snapshots
   */
  function test_defaultProposalExecution() public {
    defaultTest(
      'AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205',
      AaveV3Arbitrum.POOL,
      address(proposal)
    );

    address admin = IEmissionManager(AaveV3Arbitrum.EMISSION_MANAGER).getEmissionAdmin(
      AaveV3ArbitrumAssets.ARB_UNDERLYING
    );
    assertEq(admin, proposal.EMISSION_ADMIN());
  }
}
