import {CodeArtifact, FEATURE, FeatureModule} from '../types';
import {addressInput} from '../prompts';
import {Hex} from 'viem';
import {TEST_EXECUTE_PROPOSAL} from '../utils/constants';

type FlashBorrower = {
  address: Hex;
};

export const flashBorrower: FeatureModule<FlashBorrower> = {
  value: FEATURE.FLASH_BORROWER,
  description: 'FlashBorrower (whitelist address as 0% fee flashborrower)',
  async cli(opt, pool) {
    console.log(`Fetching information for FlashBorrower on ${pool}`);
    const response: FlashBorrower = {
      address: await addressInput({
        message: 'Who do you want to grant the flashBorrower role',
        disableKeepCurrent: true,
      }),
    };
    return response;
  },
  build(opt, pool, cfg) {
    const response: CodeArtifact = {
      code: {
        constants: [`address public constant NEW_FLASH_BORROWER = address(${cfg.address});`],
        execute: [`${pool}.ACL_MANAGER.addFlashBorrower(NEW_FLASH_BORROWER);`],
      },
      test: {
        fn: [
          `function test_isFlashBorrower() external {
          ${TEST_EXECUTE_PROPOSAL}
          bool isFlashBorrower = ${pool}.ACL_MANAGER.isFlashBorrower(proposal.NEW_FLASH_BORROWER());
          assertEq(isFlashBorrower, true);
        }`,
        ],
      },
    };
    return response;
  },
};