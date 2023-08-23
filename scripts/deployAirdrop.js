async function main() {
    const AirdropContract = await hre.ethers.getContractFactory("Airdrop");
    const airdropDeployed = await AirdropContract.deploy();
    await airdropDeployed.deployed();
    console.log("Airdrop Contract deployed to: " + airdropDeployed.address);
  }
  
main()
.then(() => process.exit(0))
.catch((error) => {
    console.error(error);
    process.exit(1);
});