const deploy = async () => {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  const PlatziPunks = await ethers.getContractFactory("PlatziPunks");
  const deployed = await PlatziPunks.deploy(10000);

  console.log("Platzi Punks address:", deployed.address);
};

deploy()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
