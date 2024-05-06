import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    pools: ['AaveV3Ethereum'],
    title: 'Fund USDC & USDT GSM',
    shortName: 'FundUSDCUSDTGSM',
    date: '20240502',
    author: 'karpatkey_TokenLogic',
    discussion: 'https://governance.aave.com/t/arfc-fund-usdc-usdt-gsm/17566',
    snapshot: 'TODO',
  },
  poolOptions: {AaveV3Ethereum: {configs: {OTHERS: {}}, cache: {blockNumber: 19783634}}},
};
