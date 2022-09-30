pragma solidity ^0.8.17;
import 'AITU_Nurai.sol';

contract TransferToken {
    function transfer() external {
        AITU_Nurai token = AITU_Nurai(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        token.transfer(msg.sender, 2000);
    }

    function transferFrom(address recipient, uint amount) external {
        AITU_Nurai token = AITU_Nurai(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        token.transferFrom(msg.sender, recipient, amount);
    }
}

contract Owner {
    function transfer (address recipient, uint amount) external {
        AITU_Nurai token = AITU_Nurai(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        token.approve(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, amount);

        TransferToken transferToken = TransferToken(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

        transferToken.transferFrom(recipient, amount);
    }
}