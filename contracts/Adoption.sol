pragma solidity ^0.5.4; // solidity version

contract Adoption { // contract name

    address[16] public adopters; // array of address

    // Adopting a pet
    // Besoin que le petId sois entre 0 et 15
    // msg.sender stock l'address de l'adopteur
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender;

        return petId;
    }

    //Return adress of the adopters
    function getAdopters() public view returns(address[16] memory) {
        return adopters;
    }
}