// SPDX-License-Identifier: MIT
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "./AuctionFactory.sol";

pragma solidity ^0.8.7;

contract SongNFT is ERC721URIStorage, Ownable {
    string public constant TOKEN_URI = "./nft.json";
    uint256 private amount;

    // address private constant mumbEth = 0x05f52c0475Fc30eE6A320973CA463BD6e4528549;
    // address private constant mumbUSDC = 0x3120f93ff440ec53c763a98ed6993fbf4118463f;

    constructor(
        uint256 _amount,
        string memory songName,
        string memory songSymbol
    ) ERC721(songName, songSymbol) {
        amount = _amount;
        _safeMint(msg.sender, _amount);
    }

    function tokenId(
        uint256 /*tokenId*/
    ) public view returns (string memory) {
        return TOKEN_URI;
    }

    // createAuction(mumbEth, mumbUSDC);
}
