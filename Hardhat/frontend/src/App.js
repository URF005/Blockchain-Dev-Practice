import "./App.css";
import { useState, useEffect } from "react";
import { ethers } from "ethers";
import contract from "./Greeter.sol/Greeter.json";

function App() {
  const { ethereum } = window;
  const [address, setAddress] = useState("Your Address");
  const [balance, setbalance] = useState("Your Balance");
  const [greeting, setgreeting] = useState("Your Greeting");
  const contractaddress = "0x5FbDB2315678afecb367f032d93F642f64180aa3";
  const infuraprovider = new ethers.providers.JsonRpcProvider(
    "https://goerli.infura.io/v3/aa89612d1ce64c588a4ca2a1f662a506"
  );
  const walletprovider = new ethers.providers.Web3Provider(ethereum);
  const getcontractdata = new ethers.Contract(
    contractaddress,
    contract.abi,
    infuraprovider
  );
  const sendcontracTx = new ethers.Contract(
    contractaddress,
    contract.abi,
    (walletprovider.getSigner())
  );
  const sendtrans = async () => {
    await ethereum.request({
      method: "eth_sendTransaction",
      params: [
        {
          to: "0x582717091a4436d9144395419611B2FA1A6A61E4",
          from: address,
          value: "0x38D7EA4C68000",
          chainId: "0x5",
        },
      ],
    });
  };
  const changechain = async () => {
    await ethereum.request({
      method: "wallet_addEthereumChain",
      params: [
        {
          chainId: "0x5", // Chain ID (in hexadecimal format)
          chainName: "Goerli Testnet", // Name of the chain
          nativeCurrency: {
            name: "Ethereum",
            symbol: "ETH", // Currency symbol
            decimals: 18, // Number of decimals
          },
          rpcUrls: ["https://ethereum-goerli.publicnode.com"], // RPC endpoints
          blockExplorerUrls: ["https://goerli.etherscan.io"], // Block explorer URL
        },
      ],
    });
  };
  const switchchain = async () => {
    await ethereum.request({
      method: "wallet_switchEthereumChain",
      params: [
        {
          chainId: "0xaa36a7", // Chain ID (in hexadecimal format)
        },
      ],
    });
  };

  const requestAccount = async () => {
    // await ethereum.request({
    //   method: "wallet_requestPermissions",
    //   params: [
    //     {
    //       eth_accounts: {},
    //     },
    //   ],
    // });
    const accounts = await ethereum.request({ method: "eth_requestAccounts" });
    const balance = await ethereum.request({
      method: "eth_getBalance",
      params: [accounts[0], "latest"],
    });

    setAddress(accounts[0]);
    setbalance(ethers.utils.formatEther(balance));
  };
  const getgreeting=async()=>{
    const data=await getcontractdata.greet();
    console.log(data);
    setgreeting(data);

  }
  const setdata=async()=>{
    const senddata=await sendcontracTx.setGreeting("Usama");
  }
  useEffect(() => {
    ethereum.on("accountsChanged", async (accounts) => {
      setAddress(accounts[0]);
      const balance = await ethereum.request({
        method: "eth_getBalance",
        params: [accounts[0], "latest"],
      });
      setbalance(ethers.utils.formatEther(balance));
      ethereum.on("chainChanged", (chain) => {
        console.log(chain);
      });
    });
  });
  return (
    <div className="App">
      <header className="App-header">
        <a className="App-link" onClick={requestAccount}>
          Connect Wallet
        </a>
        <div className="div1">{address}</div>
        <div className="div1">{balance}</div>
        <a className="App-link" onClick={changechain}>
          Add Network
        </a>
        <a className="App-link" onClick={switchchain}>
          Switch Network
        </a>
        <a className="App-link" onClick={sendtrans}>
          Send Transaction
        </a>
        <a className="App-link" onClick={getgreeting}>Get Greeting</a>
        <a className="App-link" onClick={setdata}>Set Greeting</a>
        <div className="div1">{greeting}</div>
      </header>
    </div>
  );
}

export default App;
