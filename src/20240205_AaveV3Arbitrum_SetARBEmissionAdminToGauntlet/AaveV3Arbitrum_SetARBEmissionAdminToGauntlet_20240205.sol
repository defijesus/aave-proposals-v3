// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IProposalGenericExecutor} from 'aave-helpers/interfaces/IProposalGenericExecutor.sol';
import {AaveV3Arbitrum, AaveV3ArbitrumAssets} from 'aave-address-book/AaveV3Arbitrum.sol';

interface IEmissionManager {
  function setEmissionAdmin(address reward, address admin) external;
}

/**
 * @title Set ARB Emission Admin to Gauntlet
 * @author @karpatkey_TokenLogic & @Gauntlet
 * - Snapshot: TODO
 * - Discussion: https://governance.aave.com/t/arfc-set-arb-emission-admin-to-gauntlet/16554
 */
contract AaveV3Arbitrum_SetARBEmissionAdminToGauntlet_20240205 is IProposalGenericExecutor {
  IEmissionManager public constant EMISSION_MANAGER =
    IEmissionManager(AaveV3Arbitrum.EMISSION_MANAGER);
  address public constant EMISSION_ADMIN = 0xE79C65a313a1f4Ca5D1d15414E0c515056dA90b4;

  function execute() external {
    EMISSION_MANAGER.setEmissionAdmin(AaveV3ArbitrumAssets.ARB_UNDERLYING, EMISSION_ADMIN);
  }
}
