---
title: "Fund USDC & USDT GSM"
author: "karpatkey_TokenLogic"
discussions: "https://governance.aave.com/t/arfc-fund-usdc-usdt-gsm/17566"
snapshot: "TODO"
---

## Simple Summary

This publication proposes the DAO transfers 1M USDC and 1M USDT to the respective GHO Stability Modules (GSM).

## Motivation

With significant improvement in the GHO price as a result of the ongoing merit program, the GHO Stewards would like to propose funding both the USDC and USDT GSMs.

Funding the GSM is expected to help mitigate the potential impact of funds being withdrawn from the stkGHO Safety Module (SM) category by providing continuous support for the GHO peg and protect the DEX liquidity spread across several pools.

The below table shows the larger holding sizes currently in cool down. Although, some users will be eligible to withdraw GHO before the GSM is funded, the GSM is intended to be funded before some of the later holdings exit cool down.

| SM Category | Size | Cool Down Date |
| :---------: | :--: | :------------: |
|   stkGHO    | 1.4M |   06/05/2024   |
|   stkGHO    | 3.0M |   08/05/2024   |
|   stkGHO    | 0.9M |   10/05/2024   |
|   stkGHO    | 2.4M |   19/05/2024   |

Source: [Dune Dashboard](https://dune.com/queries/2816986/4697667)

With the introduction of the Merit rewards expected to be included in the Aave Protocol frontend very soon and AAVE emissions flowing to depositors, we expect several of these addresses will recommit to holding GHO within the SM.

## Specification

Two Allowances are to be created enabling the Aave Liquidity Committee (ALC) to draw 1M USDC and 1M USDT from Aave v3.

When market conditions are optimal, the ALC will fund the USDC and USDT GSMs.

ALC SAFE: `0x205e795336610f5131Be52F09218AF19f0f3eC60`

| Asset | Asset |                 GSM Address                  |
| :---: | :---: | :------------------------------------------: |
| USDT  |  1M   | `0x686F8D21520f4ecEc7ba577be08354F4d1EB8262` |
| USDC  |  1M   | `0x0d8eFfC11dF3F229AA1EA0509BC9DFa632A13578` |

This proposal will be implemented via the Direct-to-AIP process.

Future GSM related proposals, such as this one, are to be implemented via the Direct-to-AIP process.

## References

- Implementation: [AaveV3Ethereum](https://github.com/bgd-labs/aave-proposals-v3/blob/main/src/20240502_AaveV3Ethereum_FundUSDCUSDTGSM/AaveV3Ethereum_FundUSDCUSDTGSM_20240502.sol)
- Tests: [AaveV3Ethereum](https://github.com/bgd-labs/aave-proposals-v3/blob/main/src/20240502_AaveV3Ethereum_FundUSDCUSDTGSM/AaveV3Ethereum_FundUSDCUSDTGSM_20240502.t.sol)
- [Snapshot](TODO)
- [Discussion](https://governance.aave.com/t/arfc-fund-usdc-usdt-gsm/17566)

# Disclosure

TokenLogic and karpatkey receive no payment for this proposal. TokenLogic and karpatkey are both delegates within the Aave community.

## Copyright

Copyright and related rights waived via [CC0](https://creativecommons.org/publicdomain/zero/1.0/).
