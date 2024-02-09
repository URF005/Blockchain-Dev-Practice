// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;
contract Name {
    //Fixed size array
    uint [] public name=[1,2,3];
    //Dynamic aaray
     string [] public name1=["Usama","Rehan","Farooqi"];
     function get()  public view returns(string[] memory) 
     {
        return name1;
     }
     function get1()  public returns(uint) 
     {
        name[0]=3;
        return name[0];
     }
     //Push and Pop
     function get2()  public
     {
        return name.push(4);
     }



    
}