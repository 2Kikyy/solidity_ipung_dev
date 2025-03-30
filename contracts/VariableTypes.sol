pragma solidity >=0.7.0 <0.9.0;

contract VariableTypes {
    // state variable
    uint public sum;

    // local variable
    function tambah(uint num1, uint num2) public {
        // local
        uint temp = num1 + num2;

        sum = temp;
    }

    function getHasil() public view returns(uint) {
        return sum;
    }
}


contract Types {
    bool public valid = true;

    int32 public angkaku = 32;
    uint public angkamu = 1;

    uint32 public ui_data = 5_01_2025;

    uint8 result;

    function tambah() public {
        // result = 3/5;
        result = 3.5 + 1.5;
    }

    // bytes 1-32 

    bytes1 public huruf = "A";
    string public kalimat = "Ini adalah data string";

    // enum
    


}

contract EnumSaya {
    enum Week {Mon, Tue, Wed, Thur, Fri, Sat, Sun}

    function getEnum() public pure returns(Week) {
        return Week.Thur;
    }
}