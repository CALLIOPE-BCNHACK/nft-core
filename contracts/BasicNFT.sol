// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "./AuctionFactory.sol";

pragma solidity ^0.8.7;

contract BasicNFT is ERC721URIStorage, Ownable {
    string public constant TOKEN_URI = "";
    uint256 private tokenCounter;

    constructor(
        uint256 amount,
        string memory songName,
        string memory songSymbol
    ) ERC721(songName, songSymbol) {
        _safeMint(msg.sender, amount);
    }
}

// function tokenURI(uint256 /*tokenId*/) public view override returns (string memory) {
//     return TOKEN_URI;
// }

// function getTokenCounter public view returns(uint256){
//     return tokenCounter;
// }
