// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract PayEth {
  address payable public payer;

  constructor() {
    payer == msg.sender;
  }

  function payeth() payable public {
    require(msg.value > 0, "You need a significant amount of Eth");
    require(msg.sender == payer, "You need a significant address");

    payer.transfer(msg.value);
  }
  
}
