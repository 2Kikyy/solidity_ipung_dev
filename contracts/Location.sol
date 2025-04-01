pragma solidity >=0.7.0 < 0.9.0;

// lokasi data
// gas

//  storage
// memory
// calldata
// stack

// contract DataLocation {
//     //storage
//     uint stateStorage;

//     // uint storage stateStorageSaya; //error

//     // memory
//     function kalkulus(uint a, uint b) public pure returns (uint hasil) {
//         return a + b;
//     }
// }

// contract Locations {
//     // storage
//     bool isReady;

//     function iniFungsi() public {
//         // values
//         bool isOke;
//         uint number;
//         address akun;
//     }
// }

// contract Locations2 {
//     uint public stateVariable1 = 10;
//     uint stateVariable2 = 20;

//     function iniFungsi() public returns (uint) {
//         stateVariable1 = stateVariable2;
//         stateVariable2 = 30;

//         return stateVariable1; //20
//     }
// }

// contract Locations3 {
//     uint stateVar = 10;

//     function iniFungsi() public returns (uint) {
//         uint localVar = 20;
//         stateVar = localVar;
 
//         localVar = 40; // tidak bisa mengubah

//         return stateVar; //20
//     }
// }


contract Locations4 {
    // uint stateVar = 10; // storage

    // function iniFungsi() public returns(uint) {
    //     uint localVar = 20;

    //     localVar = stateVar;
    //     stateVar = 40;

    //     return localVar;
    // }

    function iniFungsi() public pure returns(uint[] memory, uint[] memory) {
        uint[] memory localMemoryArray1 = new uint[](3);

        localMemoryArray1[0] = 4;
        localMemoryArray1[1] = 5;
        localMemoryArray1[2] = 6;

        uint[] memory localMemoryArray2 = localMemoryArray1;
        localMemoryArray1[0] = 10;

        return (localMemoryArray1, localMemoryArray2);
    }

    function iniValue() public pure returns(uint) {
        uint localVar1 = 10;
        uint localVar2 = 20;

        localVar1 = localVar2;
        localVar1 = 40;

        return localVar1;
    }
}