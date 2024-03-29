//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

/**
 * @dev this is just a dummy mintable/burnable ERC721 for testing purposes
 */
contract T721 is ERC721 {
    
    constructor(string memory name, string memory symbol) ERC721(name, symbol) {

    }

    function mint(address account, uint256 id) external {
        _mint(account, id);
    }

    function burn(uint256 id) external {
        _burn(id);
    }

}
