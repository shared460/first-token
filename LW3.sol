// SPDX-License-Identifier: MIT

//here we use version greater or equal to 0.8.19
pragma solidity ^0.8.19;

//importing the openzeppline ERC20 standard contract
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract LW3 is ERC20 {

     constructor(string memory _name, string memory _symbol) ERC20(_name,_symbol){
          //only call when contract deployed first time

          //get some token by this _min inbuilt function in ERC20
          //msg.sender is the person deploying the contract
          _mint(msg.sender,1000*(10**18));

     }    

     //this is ti increase the tokens quantity
     //this is an transaction
     function mint() public{
          _mint(msg.sender,1000*(10**18));
     }
}

//this is the deployed address '0xC9B23Dc1f849dBA6553Cd81003b2266A94C149dc'