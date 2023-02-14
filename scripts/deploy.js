async function main() {
  const ClubIDCheck = await ethers.getContractFactory("ClubIDCheck");

  // Start deployment, returning a promise that resolves to a contract object
  const clubid_check = await ClubIDCheck.deploy();
  console.log("Contract deployed to address:", clubid_check.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
