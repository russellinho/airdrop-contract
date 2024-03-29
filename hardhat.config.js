/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require ("@nomiclabs/hardhat-waffle");
require ("@nomiclabs/hardhat-ethers");
require ("@openzeppelin/hardhat-upgrades");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: {
    compilers: [ 
      {
        version: "0.8.19"
      },
      {
        version: "0.7.6"
      },
      {
        version: "0.6.8"
      }
    ]
  },
  networks: {
    testnet: {
      url: 'https://api.avax-test.network/ext/bc/C/rpc',
      chainId: 43113,
      accounts: ['']
    },
    mainnet: {
      url: 'https://mainnet.infura.io/v3/6671910a18f04f9aa3426e6ee1cea0a3',
      chainId: 1,
      accounts: ['']
    },
  }
}
