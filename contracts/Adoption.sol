pragma solidity ^0.8.0;

contract Adoption { 
  
  error AdoptionErrorLengthId();
  
  address[16] public adopters; 

  function adopt(uint256 petId) public returns (uint256) { 
    if(petId <= 0 && petId > 15) { 
      revert AdoptionErrorLengthId();
    }

    adopters[petId] = msg.sender; 

    return petId; 
  }

  function getAdopters() public view returns (address[16] memory) { 
    return adopters; 
  }

}