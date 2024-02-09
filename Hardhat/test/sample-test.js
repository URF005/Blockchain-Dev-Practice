const { expect,assert } = require("chai");
const { ethers } = require("hardhat");

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const Greeter = await ethers.getContractFactory("Greeter");
    const greeter = await Greeter.deploy("Hello, world!");
    await greeter.waitForDeployment();

    // Check the initial greeting
    expect(await greeter.greet()).to.equal("Hello, world!");

    // Change the greeting
    const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

    // Wait until the transaction is mined
    await setGreetingTx.wait();

    // Check the new greeting
    expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});
