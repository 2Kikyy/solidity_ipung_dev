pragma solidity >=0.7.0 < 0.9.0;

contract AddressContract {
    // address = nomor rekening
    // smart contract punya address

    // address payable 
    // send dan transfer ether

    // address public caller;

    // function getCallerAddress() public returns(address) {
    //     caller = msg.sender;

    //     return caller;
    // }

    // function getCallerAddress() public view returns(address caller) {
    //     caller = msg.sender;
    // }

    uint receivedAmount;

    function getAddress() public view returns(address) {
        address myAddress = address(this);
        return myAddress;
    }

    function receivedEther() payable public {
        receivedAmount = msg.value;
    }

    //address payable
    function transferFund(address payable _address, uint nominal) public {
        _address.transfer(nominal);
    }

    function sendFund(address payable _address, uint nominal) public returns(bool) {
        _address.send(nominal);
    }
}