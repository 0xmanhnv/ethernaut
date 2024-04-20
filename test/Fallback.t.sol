// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";

import "src/Fallback.sol";

contract TestFallback is Test {
    Fallback c;

    function setUp() public {
        c = new Fallback();
    }

    function testBar() public {
        console.log(msg.sender);
        console.log(address(this));
        console.logAddress(address(c.owner));

        assertEq(uint256(1), uint256(1), "ok");
    }

    // function testFoo(uint256 x) public {
    //     vm.assume(x < type(uint128).max);
    //     assertEq(x + x, x * 2);
    // }
}
