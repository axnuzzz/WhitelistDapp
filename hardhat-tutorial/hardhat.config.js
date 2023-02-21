require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: ".env" });

const QUICKNODE_API_KEY_URL = process.env.QUICKNODE_API_KEY_URL;
const GOERLI_PRIV_KEY = process.env.GOERLI_PRIV_KEY;

module.exports = {
  solidity: "0.8.16",
  networks: {
    goerli: {
      url: QUICKNODE_API_KEY_URL,
      accounts: [GOERLI_PRIV_KEY],
    },
  },
};
