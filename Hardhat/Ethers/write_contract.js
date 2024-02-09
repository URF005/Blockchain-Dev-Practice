const {ethers} = require('ethers');
const transfer = require("./transfer.json");

const RPC = 'https://goerli.infura.io/v3/aa89612d1ce64c588a4ca2a1f662a506'; // Put your RPC url here
const privatekey ="cdf7b5250a93cb93b088d5b82adb7e247ad9f671cf2270b80c58a5ab277565f0";
const account1 = "0x582717091a4436d9144395419611B2FA1A6A61E4";

const provider = new ethers.providers.JsonRpcProvider(
    RPC
)

const wallet = new ethers.Wallet(privatekey, provider);

const contractAddress = '0xc078f7e856E0f02b22B1a0c59cCeB9a7987D78F';
const ABI = transfer.abi;

async function call() {
    const contract = new ethers.Contract(
        contractAddress,
        ABI,
        wallet
    )

    console.log(`${account1} : ${ethers.utils.formatEther(await provider.getBalance(account1))}`)

    console.log(`${await wallet.getAddress()} : ${ethers.utils.formatEther(await wallet.getBalance())}`)

    const tx = await contract._transfer(account1, {
      value: ethers.utils.parseEther('0.5')
    })

    await tx.wait();

    console.log(`${account1} : ${ethers.utils.formatEther(await provider.getBalance(account1))}`)

    console.log(`${await wallet.getAddress()} : ${ethers.utils.formatEther(await wallet.getBalance())}`)

    console.log(tx);

}

call();