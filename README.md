# Basic Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Before to test you must create account in infure and create project to get Project ID, after FaucETH de deploy the contract, so update the .env.example and rename to .env

Step to test:

```shell
npm install
npx hardhat compile
npx hardhat test
```

To deploy the contract in the test network

```shell
npx hardhat run scripts/deploy.js --network goerli
```

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
npx hardhat help
```
