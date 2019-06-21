
/*
Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

Example 1:

Input: 121
Output: true
Example 2:

Input: -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
Example 3:

Input: 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
Follow up:

Coud you solve it without converting the integer to a string?
*/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
    
    if x < 10 && x >= 0 {
        return true
    }else if x > 0{
        var x = x
        var temp = x
        var number = 0
        while (x > 0) {
            number = number * 10 + x % 10
            x = x / 10
        }
        print(number)
        if temp != number{
            return false
        }
        return true
    }else{
        return false
    }
}
}
