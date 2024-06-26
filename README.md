# Project: Create and Mint Token

In this project, we are tasked to create a smart contract to create our own ERC20 token and deploy it. The Solidity contract named `myToken.sol` has the necessary Solidity. As required, the contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.

## Description

For this project, a contract was written using various ERC20 functions for us to create our own tokens.

## Overview

The following functions found in `myToken.sol` were defined as follows:

*1. createTokens(address _recipient, uint256 _i)* - This function utilizes the `_mint` function from the ERC20 Token Standard.

*2. destroyTokens(uint256 _i)* - This function utilizes the `_brun` function from the ERC20 Token Standard.

*3. transferTokens(address _recipient, uint256 _i)* - This function utilizes the `_transfer` function from the ERC20 Token Standard.

### Running the Contract in Remix IDE.

* Open [Remix IDE](https://remix.ethereum.org/).
* Inside Remix IDE, create a new file and paste the contents of `myToken.sol` or upload the file itself to the IDE.
* Ensure that the compiler version is set to `0.8.25`.
* Hit `Ctrl` + `S` on your keyboard to compile the smart contract.
* Deploy the compiled contract by navigating to the sidebar of the IDE, input the name, symbol, and the initial amount of the token and then click `Deploy`.
* To interact with the variables, drop down the `Deployed Contracts` menu and place your input in the respective bins.

## Authors

Daryl Juacalla
[@MrLyrad](https://github.com/MrLyrad)


## License

This project is licensed under the MIT License.
