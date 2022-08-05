pragma solidity ^0.8.0;

contract Counter {   // This contract will store a count on the blockchain, and a user will change that count by 1
    uint count; // 1, 2, 3... etc.  This is a state variable uint = unsigned interger, an interger without a sign... no minus signs for example

    constructor() public { //a constructor function is run once and only once per contract, whenever it is deployed to the blockchain
        count = 0;
    }

    function getCount() public view returns(uint){ //this is a read function, and does not cost gas
        return count;
    }

    function incrementCount() public { //this function is a write function because this changes the blockchain, and it will cost gas
        count = count + 1;
    }
}
