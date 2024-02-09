const { ethers } = require("ethers");
const RPC = "https://goerli.infura.io/v3/aa89612d1ce64c588a4ca2a1f662a506";
const locscalrpc = "http://127.0.0.1:8545/";
const privatekey ="cdf7b5250a93cb93b088d5b82adb7e247ad9f671cf2270b80c58a5ab277565f0";
const account1 = "0x582717091a4436d9144395419611B2FA1A6A61E4";
const provider = new ethers.providers.JsonRpcProvider(RPC);
const wallet = new ethers.Wallet(privatekey, provider);

async function call() {
  const balanceBefore = await wallet.getBalance();
  console.log(await wallet.getAddress(), "Balance Before:", ethers.utils.formatEther(balanceBefore));

  // Check if the wallet has sufficient funds before sending the transaction
  const amountToSend = ethers.utils.parseEther("0.1"); // Adjust the amount as needed
  if (balanceBefore.lt(amountToSend)) {
    console.error("Insufficient funds. Please fund the wallet before running this script.");
    return;
  }

  const trans = await wallet.sendTransaction({
    to: account1,
    value: amountToSend,
  });
  await trans.wait();

  const balanceAfter = await wallet.getBalance();
  console.log(await wallet.getAddress(), "Balance After:", ethers.utils.formatEther(balanceAfter));
}

call();
