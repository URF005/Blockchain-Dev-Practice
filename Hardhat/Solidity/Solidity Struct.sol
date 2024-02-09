// SPDX-License-Identifier: MIT
pragma solidity>=0.7.0;
contract Name {
    struct student{
        string name;
        uint age;
    }
    /*student public newstudent;
    function setdata()public {
        newstudent=student("Usama",19);
    }
    function getdata()public view  returns (string memory){
        return newstudent.name;

    }*/
    //Showing struct data in array
    student[] public allstudentdata;
    function insertdata(string memory _name,uint _age) public{
        student memory newstudent=student({
            //for user input underscore is use
            name:_name,
            age:_age

        });
        allstudentdata.push(newstudent);
    }




    
}