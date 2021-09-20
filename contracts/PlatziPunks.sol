// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract PlatziPunks is ERC721, ERC721Enumerable {
    using Counters for Counters.Counter;

    Counters.Counter private _idCounter;
    uint256 public maxSupply;

    constructor(uint256 _maxSupply) ERC721("PlatziPunks", "PLPKS") {
        maxSupply = _maxSupply;
    }

    function mint() public {
        uint256 current = _idCounter.current();
        require(current < maxSupply, "There are no PlatziPunks left :(");

        _idCounter.increment();
        _safeMint(msg.sender, current);
    }

    // Override required
    function _beforeTokenTransfer(
        address _from,
        address _to,
        uint256 _tokenId
    ) internal override(ERC721, ERC721Enumerable) {
        super._beforeTokenTransfer(_from, _to, _tokenId);
    }

    function supportsInterface(bytes4 _interfaceId)
        public
        view
        override(ERC721, ERC721Enumerable)
        returns (bool)
    {
        return super.supportsInterface(_interfaceId);
    }
}
