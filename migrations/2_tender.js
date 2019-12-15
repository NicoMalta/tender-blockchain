var Tender = artifacts.require("./Tender.sol");

module.exports = function(deployer) {
  deployer.deploy(Tender);
};