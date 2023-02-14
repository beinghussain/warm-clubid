// SPDX-License-Identifier: MIT

// Specifies the version of Solidity, using semantic versioning.
// Learn more: https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html#pragma
pragma solidity >=0.7.3;

interface WarmInterface {
    function balanceOf(address contractAddress, address owner)
        external
        view
        returns (uint256);
}

// Defines a contract named `HelloWorld`.
// A contract is a collection of functions and data (its state). Once deployed, a contract resides at a specific address on the Ethereum blockchain. Learn more: https://solidity.readthedocs.io/en/v0.5.10/structure-of-a-contract.html
contract ClubIDCheck {
    address public constant TENKTF_CONTRACT_ADDRESS =
        0xbcA63e82869C9778B842ccbd8e88BBD766B48578;
    address public constant WARM_CONTRACT_ADDRESS =
        0xB2790b357c3a1258efdc68a4fD043FFc137aC26b;

    //Emitted when update function is called
    //Smart contract events are a way for your contract to communicate that something happened on the blockchain to your app front-end, which can be 'listening' for certain events and take action when they happen.

    // Declares a state variable `message` of type `string`.
    // State variables are variables whose values are permanently stored in contract storage. The keyword `public` makes variables accessible from outside a contract and creates a function that other contracts or clients can call to access the value.

    // Similar to many class-based object-oriented languages, a constructor is a special function that is only executed upon contract creation.
    // Constructors are used to initialize the contract's data. Learn more:https://solidity.readthedocs.io/en/v0.5.10/contracts.html#constructors

    // A public function that accepts a string argument and updates the `message` storage variable.
    function verify(address contractAddress) external view returns (uint256) {
        return
            WarmInterface(contractAddress).balanceOf(
                TENKTF_CONTRACT_ADDRESS,
                msg.sender
            );
    }
}
