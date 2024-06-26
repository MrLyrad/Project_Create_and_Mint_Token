// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

// importing the OpenZeppelin Library
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract myToken is ERC20 {
    // creating a private variable for the owner of the account
    address private owner;

    // creating a constructor for the token to be created
    constructor(string memory tkName, string memory tkSymbol, uint256 initialAmount) ERC20(tkName, tkSymbol) {
        // mint function from the ERC20 Token Standard from OpenZeppelin library
        _mint(msg.sender, initialAmount);

        // setting the owner of the account to be the sender
        owner = msg.sender;
    }

    // creating a modifier to restrict users, it should only be accessed by the owner
    modifier onlyAdmin() {
        require(msg.sender == owner, "Authorized Users Only!");
        _;
    }

    function createTokens(address _recipient, uint256 _i) public onlyAdmin {
        // mint function from the ERC20 Token Standard
        _mint(_recipient, _i);
    }

    function destroyTokens(uint256 _i) public {
        // burn function from the ERC20 Token Standard
        _burn(msg.sender, _i);
    }

    function transferTokens(address _recipient, uint256 _i) public returns (bool) {
        require(_recipient != address(0), "ERC20: transfer to the zero address");
        // transfer function from the ERC20 Token Standard
        _transfer(msg.sender, _recipient, _i);
        return true;
    }
}
