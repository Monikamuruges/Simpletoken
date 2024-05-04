// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleToken {
  string public name = "My Simple Token";
  string public symbol = "MST";
  uint256 public totalSupply;

  mapping(address => uint256) public balances;

  constructor(uint256 _initialSupply) {
    totalSupply = _initialSupply;
    balances[msg.sender] = totalSupply;
  }

  function transfer(address recipient, uint256 amount) public  {
    require(balances[msg.sender] >= amount, "Insufficient balance");
    balances[msg.sender] -= amount;
    balances[recipient] += amount;
   }
}
