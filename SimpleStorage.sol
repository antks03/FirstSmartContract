// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract SimpleStorage {

  uint256 public myFavoriteNumber;

  //uint256[] listOfFavoriteNumbers;

  struct Person{
      uint256 favoriteNumber;
      string name;
  }

  function store(uint256 _favoriteNumber) public virtual {
    myFavoriteNumber = _favoriteNumber;
  }

  Person[] public listOfPeople;

  mapping(string => uint256) public nameToFavoriteNumber;

  Person public pat = Person({favoriteNumber: 7, name:"Pat"});

  function retrieve() public view returns(uint256){
    return myFavoriteNumber;
  }

  function addPerson(string memory _name, uint256 _favoriteNumber) public {
    Person memory newPerson = Person(_favoriteNumber, _name);
    listOfPeople.push(newPerson);
    nameToFavoriteNumber[_name] = _favoriteNumber;
  }
}
