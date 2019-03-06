//Write your own contracts here. Currently compiles using solc v0.4.15+commit.bbb8e64f.
pragma solidity ^0.5.1;
contract Test
{
  // NOTE: Define the event 
  event MyEvent(
    address uid, 
    string msg 
  );
  
  function main() public returns (uint[] memory) 
  {
    // Emit the Event 
    emit MyEvent(msg.sender, "Prova"); 
  }
}





