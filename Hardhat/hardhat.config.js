require("@nomicfoundation/hardhat-toolbox");
task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    const address = await account.getAddress();
    const balance = await hre.ethers.provider.getBalance(address);
    console.log(address + " :" + hre.ethers.utils.formatEther(balance));
  }
});

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.0",
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
      chainId: 1337,
    },
    Goerli: {
      url: "https://goerli.infura.io/v3/aa89612d1ce64c588a4ca2a1f662a506",
      accounts: [
        "cdf7b5250a93cb93b088d5b82adb7e247ad9f671cf2270b80c58a5ab277565f0",
      ],
    },
  },
};
