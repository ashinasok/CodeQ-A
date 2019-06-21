/*
Implement strStr().

Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

Example 1:

Input: haystack = "hello", needle = "ll"
Output: 2
Example 2:

Input: haystack = "aaaaa", needle = "bba"
Output: -1
Clarification:

What should we return when needle is an empty string? This is a great question to ask during an interview.

For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().
*/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
    
       guard !needle.isEmpty else { return 0 }
        guard haystack.count >= needle.count else { return -1 }
        
        let distance = haystack.count - needle.count
        for i in 0...distance {
            let start = haystack.index(haystack.startIndex, offsetBy: i)
            let end = haystack.index(haystack.startIndex, offsetBy: i+needle.count)
            
            if haystack[start..<end] == needle {
                return start.encodedOffset
            }
        }
        return -1
    }
}
