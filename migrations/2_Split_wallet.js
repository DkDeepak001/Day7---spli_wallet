const split_wallet = artifacts.require("./split_wallet.sol");

module.exports = function(deployer, _network, accounts) {
  deployer.deploy(split_wallet, accounts[0]);
};