async function main() {
    const ErrorHandling = await ethers.getContractFactory("ErrorHandling");
    const errorHandling = await ErrorHandling.deploy();
    await errorHandling.deployed();
    console.log("ErrorHandling deployed to:", errorHandling.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
