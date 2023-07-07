// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract funding {
    address payable owner;

    constructor (){
        owner = payable(msg.sender);
    }


    function getBalance () public view returns (uint) {
        require(owner != msg.sender, "Only contract creator can view");
        return owner.balance;
    }

    function fundWallet () payable  public {
        require(msg.value >= 10 ether, "At least 10 Ether should be sent idan");
        owner.transfer(msg.value);
    }
   
}