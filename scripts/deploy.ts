import { ethers } from "hardhat";

async function main() {

  const SimpleStorage = await ethers.getContractFactory("SimpleStorage");
  const SimpleStorage = await SimpleStorage.deploy(?);

  await SimpleStorage.deployed();

  console.log(`SimpleStorage deployed to ${SimpleStorage.address}`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
