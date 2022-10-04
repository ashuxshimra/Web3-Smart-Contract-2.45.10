//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7; //^ implies the version equal and greater than this version mentioned that is 0.8.7 , ALSO while compiling make sure to use the compiler of version equal to this or greater than this.
contract SimpleStorage
{
    //basic data types in solidity : uint ,uint256(can be 2 8 , 6 etc here 256 implies can hold upto 256 bytes and so its better to define expicitly) address , string , boolean , byte32
uint256 public favoriteNumber; //this gets initialised to the default value of solidity that is 0
struct People{ //here now to add multiple items in a list we use struct and hence using struct defined the functionalities of the entity and thus this type will be used to add items of same specifications as defined in this struct.  
    uint favoriteNumber;
    string name;
}
People[] public people; //here made an array of type People struct and name people so to add items in this array list make a function as done below : and also hence when this is done , in deployed contracts you will see a blue colored people button which tells that it takes index number starting from 0 and gives the items on that index when clicked on this button
function add(uint256 _favoriteNumver, string memory _name) public{ //this is the function made to add items in array
    people.push(People(_favoriteNumver, _name)); //pushing the items(from user) in People type array where the items type will be that of struct type that is People
} //on one click at index 0 the entered items will be added and when check on people button with entered index 0 then this item will be displayed similarly when added another items using add fucntion then these items will be added at 1st index of array and thus in people with 1 index input you get this new entered itema and so on

function store(uint256 _favoriteNumver) public{ //this is a function which will perform certain action and so while deployed it will ask a uint type input and this function will perform its operation that is here the favoriteNumber will be set to the entered amount. 
    favoriteNumber=_favoriteNumver;
}
function retrive() public view returns(uint256){//here we have made a function just to get the favorite number , also note that when there are functions of view or pure then in remix the buttons will be of blue colors which means u are not midifying anything just reading and when these view or pure functions are called alone then there is no gas cost for it
    return favoriteNumber;
}
} 
// 0xd9145CCE52D386f254917e481eB44e9943F39138 , got from deployed contracts this is the address of the smart contract just like we have address for our account wallet , so when smart contract is deployed it is deployed to blockchak netwrok and haves some address where its deployed
//on adding public keyword say to the variable as done above , in deployed contract the blue color button to view that variable pops up here favoriteNumber , this publickeyword implicitly invokes a getter function that is basically means to return the value
// also note that the more stuff we do that is the more computations we add to our smart contract the more transaction gas fee is gonna be cost
 