//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Whitelist {
    //maximum number of addresses that can be whitelisted
    uint8 maxWhitelistedAddresses;

    //no of whitelisted addresses till now
    uint8 public numAddressesWhitelisted;

    //mapping true to all the whitelisted addresses
    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressesToWhitelist() public {
        //check if the user is already in the whitelist
        require(
            !whitelistedAddresses[msg.sender],
            "You're already in the whitelist"
        );
        require(numAddressesWhitelisted <= maxWhitelistedAddresses);

        //Add user to the whitelist if not already there
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted++;
    }
}
