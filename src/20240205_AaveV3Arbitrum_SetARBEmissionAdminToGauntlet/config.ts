import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    pools: ['AaveV3Arbitrum'],
    title: 'Set ARB Emission Admin to Gauntlet',
    shortName: 'SetARBEmissionAdminToGauntlet',
    date: '20240205',
    author: '@karpatkey_TokenLogic & @Gauntlet',
    discussion: 'https://governance.aave.com/t/arfc-set-arb-emission-admin-to-gauntlet/16554',
    snapshot: 'TODO',
  },
  poolOptions: {AaveV3Arbitrum: {configs: {OTHERS: {}}, cache: {blockNumber: 177805822}}},
};
