// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/ERC721/ERC721.sol"

pragma solidity ^0.8.7;

contract BasicNFT is ERC721 {
    string public constant TOKEN_URI = "";
    uint private tokenCounter;

    constructor() ERC721("Calliope", CALI) { 
        tokenCounter = 0;

        function mintNFT() public returns(uint256){
            _safeMint(msg.sender, tokenCounter);
            tokenCounter += 1;
            return tokenCounter;
        }

        function tokenURI(uint256 /*tokenId*/) public view override returns (string memory) {
            return TOKEN_URI;
        }

        function getTokenCounter public view returns(uint256){
            return tokenCounter;
        }


        
    }
}
