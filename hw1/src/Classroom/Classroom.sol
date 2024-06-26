// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 public code = 1000;
    uint256 private returned_code;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        returned_code = code;
        code = 123;
        return returned_code;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        address class2 = msg.sender;

        if (!IClassroomV2(class2).isEnrolled()) {
            return 1000;
        } else {
            return 123;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if (gasleft() < 7000) {
            return 123;
        } else {
            return 1000;
        }
    }
}
