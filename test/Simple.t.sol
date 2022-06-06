// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.0;

import "ds-test/test.sol";

contract SimpleTest is DSTest {
    uint256 a = 1234;
    bytes32 b = 'a';
    string c = "asdf";

    function run() public returns (uint, bytes32, string memory){
        emit log_string("test");
        return (a, b, c);
    }

    function testValues() public {
        assertEq(a, 1234);
        assertEq(b, 'a');
        assertEq(c, "asdf");
    }
}
