const {ethers} = require('ethers');
const transfer = require('./transfer.json');

const RPC = 'https://goerli.infura.io/v3/aa89612d1ce64c588a4ca2a1f662a506'; // put your rpc url here

const provider = new ethers.providers.JsonRpcProvider(
    RPC
)

const contractAddress = '0xc078f7e856E0f02b22B1a0c59cCeB9a7987D78F9';
const ABI = transfer.abi;

async function call() {
    const contract = new ethers.Contract(
        contractAddress,
        ABI,
        provider
    )

    const block = await provider.getBlockNumber();
    

    const trans = contract.filters.transactions(null, '1000000000000000000');
    const transactions = await contract.queryFilter(trans)

    transactions.map((item) => {
        console.log(item.args.to, ":", ethers.utils.formatEther(item.args.amount))
    })

    
}

call();