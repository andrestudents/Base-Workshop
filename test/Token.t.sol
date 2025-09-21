// pragma solidity ^0.8.13;

// import "forge-std/Test.sol";
// import "../src/Token.sol";

// contract TokenTest is Test {
//     Token token;
//     address public constant owner = vm.makeAddr("owner");
//     address public constant user1 = vm.makeAddr("user1");

//     function setUp() public {
//         vm.startPrank(owner);
//         token = new Token("MyToken", "MTK");
//         vm.stopPrank();
//     }

//     function testInitialDeploy() public {
//         assertEq(token.name(), "MyToken");
//         assertEq(token.symbol(), "MTK");
//         assertEq(token.totalSupply(), 0);
//         assertEq(token.balanceOf(owner), 0);
//     }
// }

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
    Token token;
    address owner;
    address user1;

    function setUp() public {
        // bikin dummy addresses
        owner = vm.addr(1); // angka bebas, tiap angka unik
        user1 = vm.addr(2);

        // deploy token sebagai owner
        vm.startPrank(owner);
        token = new Token("MyToken", "MTK");
        vm.stopPrank();
    }

    function testInitialDeploy() public {
        assertEq(token.name(), "MyToken");
        assertEq(token.symbol(), "MTK");
        assertEq(token.totalSupply(), 0);
        assertEq(token.balanceOf(owner), 0);
    }
}
