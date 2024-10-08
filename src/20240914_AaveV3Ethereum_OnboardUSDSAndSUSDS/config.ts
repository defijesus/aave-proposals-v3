import {ConfigFile} from '../../generator/types';
export const config: ConfigFile = {
  rootOptions: {
    pools: ['AaveV3Ethereum'],
    title: 'Onboard USDS and SUSDS',
    shortName: 'OnboardUSDSAndSUSDS',
    date: '20240914',
    author: 'ACI',
    discussion: 'https://governance.aave.com/t/arfc-onboard-usds-and-susds-to-aave-v3/18987',
    snapshot: 'Direct-to-AIP',
    votingNetwork: 'POLYGON',
  },
  poolOptions: {
    AaveV3Ethereum: {
      configs: {
        ASSET_LISTING: [
          {
            assetSymbol: 'USDS',
            decimals: 18,
            priceFeed: '0x4F01b76391A05d32B20FA2d05dD5963eE8db20E6',
            ltv: '63',
            liqThreshold: '72',
            liqBonus: '7.5',
            debtCeiling: '0',
            liqProtocolFee: '10',
            enabledToBorrow: 'ENABLED',
            flashloanable: 'ENABLED',
            stableRateModeEnabled: 'DISABLED',
            borrowableInIsolation: 'DISABLED',
            withSiloedBorrowing: 'DISABLED',
            reserveFactor: '25',
            supplyCap: '50000000',
            borrowCap: '45000000',
            rateStrategyParams: {
              optimalUtilizationRate: '90',
              baseVariableBorrowRate: '0',
              variableRateSlope1: '5.5',
              variableRateSlope2: '75',
            },
            eModeCategory: 'AaveV3EthereumEModes.NONE',
            asset: '0x1923DfeE706A8E78157416C29cBCCFDe7cdF4102',
          },
          {
            assetSymbol: 'sUSDS',
            decimals: 18,
            priceFeed: '0x408e905577653430Bb80d91e0ca433b338CEA7C6',
            ltv: '75',
            liqThreshold: '78',
            liqBonus: '7.5',
            debtCeiling: '0',
            liqProtocolFee: '10',
            enabledToBorrow: 'DISABLED',
            flashloanable: 'ENABLED',
            stableRateModeEnabled: 'DISABLED',
            borrowableInIsolation: 'DISABLED',
            withSiloedBorrowing: 'DISABLED',
            reserveFactor: '25',
            supplyCap: '35000000',
            borrowCap: '0',
            rateStrategyParams: {
              optimalUtilizationRate: '90',
              baseVariableBorrowRate: '0',
              variableRateSlope1: '5.5',
              variableRateSlope2: '75',
            },
            eModeCategory: 'AaveV3EthereumEModes.NONE',
            asset: '0x4e7991e5C547ce825BdEb665EE14a3274f9F61e0',
          },
        ],
      },
      cache: {blockNumber: 20747338},
    },
  },
};
