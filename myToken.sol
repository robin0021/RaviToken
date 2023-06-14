// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/
//credit :- learned this with the help of Metacrafters
//contract name 
contract RaviToken {

    //These are public variables 
    //These two variables are string
    string public tokenName = "Ravi";
    string public tokenAbbr = "RR";
    //This is integer variable declared as uint
    uint public totalAmount = 0;


    // mapping variable here
    //here it acts as a dictionary where addresses are mapped to balances
    mapping(address => uint) public balances;

    // mint function where we input some address and totalamount increases
    function mint (address _address, uint _value) public {
        totalAmount += _value;
        balances [_address] += _value;
    }
    
    // burn function by which we can burn or decrease the totalamount
    function burn (address _address, uint _value) public {
        if(balances[_address] >= _value ){
            totalAmount -= _value;
            balances [_address] -= _value;
        }
    }
    //and that's how this contract works 
    //basically it is used to increase or decrease the value or amount
}
