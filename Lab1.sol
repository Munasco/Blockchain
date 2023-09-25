// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

library Array {
    // Sorts the array using the Bubble Sort algorithm
    function sort(uint[] storage arr) internal {
        uint256 len = arr.length;
        for (uint256 i = 0; i < len; i++) {
            for (uint256 j = 0; j < len - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    // Swap
                    uint temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }

    // Removes duplicates from a sorted array
    function removeDuplicates(uint[] storage arr) internal {
        if (arr.length == 0) return;

        uint[] memory uniqueArr = new uint[](arr.length);
        uint256 uniqueCount = 0;

        uniqueArr[0] = arr[0];
        uniqueCount++;

        for (uint256 i = 1; i < arr.length; i++) {
            if (arr[i] != arr[i - 1]) {
                uniqueArr[uniqueCount] = arr[i];
                uniqueCount++;
            }
        }

        // Resize storage array and copy the unique elements
        while (arr.length > uniqueCount) {
            arr.pop();
        }

        for (uint256 j = 0; j < uniqueCount; j++) {
            arr[j] = uniqueArr[j];
        }
    }
}

contract TestArray {
    uint[] public numbers;

    constructor(uint[] memory _numbers) {
        numbers = _numbers;
    }

    function addNumbers(uint _number) public {
        numbers.push(_number);
    }

    function sortNumbers() public {
        Array.sort(numbers);
    }

    function removeDuplicatesFromNumbers() public {
        Array.removeDuplicates(numbers);
    }
}
