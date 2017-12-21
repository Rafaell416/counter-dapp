pragma solidity ^0.4.4;

contract Counter {
    address creator;
    uint256 myNumber;

    function Counter () public {
        creator = msg.sender;
        myNumber = 5;
    }

    function getCreator () public constant returns (address) {
        return creator;
    }

    function getMyNumber () public constant returns (uint256) {
        return myNumber;
    }

    function setMyNumber (uint256 myNewNumber) public {
        myNumber = myNewNumber;
    }

    function kill () public {
        if(msg.sender == creator){
            selfdestruct(creator);
        }
    }
}
