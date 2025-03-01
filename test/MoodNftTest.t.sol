// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {DeployMoodNft} from "../script/DeployMoodNft.s.sol";
import {MoodNft} from "../src/MoodNft.sol";
import {Test, console} from "forge-std/Test.sol";

contract MoodNftTest is Test {
    string constant NFT_NAME = "Mood NFT";
    string constant NFT_SYMBOL = "MN";
    MoodNft public moodNft;
    DeployMoodNft public deployer;
    address public deployerAddress;
    address public constant USER = address(1);

    modifier initialMint() {
        vm.prank(USER);
        moodNft.mintNft();
        _;
    }

    function setUp() public {
        deployer = new DeployMoodNft();
        string memory sadSvg = vm.readFile("./images/sad.svg");
        string memory happySvg = vm.readFile("./images/happy.svg");
        moodNft = new MoodNft(deployer.svgToImageURI(sadSvg), deployer.svgToImageURI(happySvg));
    }

    function testInitiationCorrect() public view {
        assert(keccak256(abi.encodePacked(moodNft.name())) == keccak256(abi.encodePacked((NFT_NAME))));
        assert(keccak256(abi.encodePacked(moodNft.symbol())) == keccak256(abi.encodePacked((NFT_SYMBOL))));
    }

    function testOwnerAfterMint() public initialMint {
        assertEq(moodNft.ownerOf(0), USER, "Minting failed, USER is not the owner");
    }

    function testFlipMoodToSadUpdatesURI() public initialMint {
        vm.prank(USER);
        moodNft.flipMood(0);

        string memory expectedURI = moodNft.tokenURI(0);

        console.log(expectedURI);
        console.log(moodNft.tokenURI(0));

        assertEq(
            keccak256(abi.encodePacked(expectedURI)),
            keccak256(abi.encodePacked(moodNft.tokenURI(0))),
            "tokenURI did not match the expected SAD MOOD URI"
        );
    }

    function testFlipMoodBackToHappyUpdatesURI() public initialMint {
        vm.prank(USER);
        moodNft.flipMood(0);
        vm.prank(USER);
        moodNft.flipMood(0);

        string memory expectedURI = moodNft.tokenURI(0);
        console.log(expectedURI);
        console.log(moodNft.tokenURI(0));

        assertEq(
            keccak256(abi.encodePacked(expectedURI)),
            keccak256(abi.encodePacked(moodNft.tokenURI(0))),
            "tokenURI did not match the expected HAPPY MOOD URI"
        );
    }
}
