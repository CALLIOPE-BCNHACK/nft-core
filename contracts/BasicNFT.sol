// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

pragma solidity ^0.8.0;

contract BasicNFT is ERC721URIStorage, Ownable {
    string public constant TOKEN_URI = "";
    uint private tokenCounter;

    constructor() ERC721("Calliope", CALI) { 
        tokenCounter = 0;

        function mintNFT() public onlyOwner returns(uint256){
            tokenCounter += 1;
            _safeMint(msg.sender, tokenCounter);
            return tokenCounter;
        }

        // function tokenURI(uint256 /*tokenId*/) public view override returns (string memory) {
        //     return TOKEN_URI;
        // }

        // function getTokenCounter public view returns(uint256){
        //     return tokenCounter;
        // }


        
    }
}
