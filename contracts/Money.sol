//SPDX-License-Identifier: MIT
pragma solidity = 0.8.19;

contract Money {
    uint money;

    function deposit(uint _amount) public {
        money += _amount;
    }

    function withdraw(uint _amount) public {
        require(money >= _amount, "The requested amount is tooooo large");
        money -= _amount;
    }

    function viewAccount() public view returns (uint) {
        return money;
    }
}