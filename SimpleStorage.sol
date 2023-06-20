// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
//pragma solidity >=0.8.19 <0.9.0;

contract SimpleStorage {
    uint256  myFavoriteNumber; 
    
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    // Person public myFriend1 = Person({favoriteNumber: 7, name:"trial1"});

    Person[] public listOfPeople; //created an empty list of type Person
    //when you call this type in remix, you put in the index value of the item you want to retrieve


    function store(uint256 _favNum) public{
        myFavoriteNumber = _favNum;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favNum) public {
        // Person memory newPerson = Person(_favNum,_name);
        // listOfPeople.push(newPerson);
        // INSTEAD 
        listOfPeople.push(Person(_favNum,_name));

    }

}
