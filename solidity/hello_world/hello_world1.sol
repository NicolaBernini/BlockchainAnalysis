pragma solidity ^0.5.2; 

/**
  * An example contract which sets an internal variable and writes something on log 
  */
contract HelloWorld 
{
    string public state;
    constructor() public  {
        state = "Hello World!";
        uint256 _id = 0x01;
        log3("Prova", "", "", bytes32(_id));
    }
    
}
