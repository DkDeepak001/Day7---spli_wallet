// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Split_wallet {

	address public owner;

	constructor (address payable _owner) public {
		owner = _owner;
	}	

	function send(address payable[] memory _to , uint[] memory _amount) payable public onlyOwner {

		require(_to.length == _amount.length, " length of address is not equal to length of amount");

		for(uint i = 0; i <= _to.length; i++){
			_to[i].transfer(_amount[i]);
		}
	}

	modifier onlyOwner(){
		require(msg.sender == owner, 'user not awolled');
		_;
	}
}