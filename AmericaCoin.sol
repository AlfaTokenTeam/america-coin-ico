pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract AmericaCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function AmericaCoin(address _owner)  UpgradeableToken(_owner) {
    name = "AmericaCoin";
    symbol = "AMC";
    totalSupply = 210000000000;
    decimals = 4;

    balances[_owner] = totalSupply;
  }
}