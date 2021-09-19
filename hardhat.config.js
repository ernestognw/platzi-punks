require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.4",
  networks: {
    rinkeby: {
      url: "https://rinkeby.infura.io/v3/<<PASTE YOUR INFURA PROJECT ID (DANGEROUS)>>",
      accounts: [
        "<<PASTE YOUR PRIVATE KEY HERE (DANGEROUS)>>",
      ],
    },
  },
};
