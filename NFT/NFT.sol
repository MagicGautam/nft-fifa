pragma solidity ^0.8.0;

//Importing the ERC1155 contract from OPENZEPPLIN
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract NFTContract is ERC1155, Ownable{
    
    uint256 public constant PLAYERCARD=0;
    
    constructor() ERC1155("https://bz7e1jr70pqi.usemoralis.com/{id}.json") { //{id} is used so that the client can enter the token id of specific NFT, in our case 0.;

        _mint(msg.sender, PLAYERCARD, 1, "");
    }

    function mint(address account, uint256 id, uint256 amount) public onlyOwner {
         
        _mint(account, id, amount, "");
    }

}