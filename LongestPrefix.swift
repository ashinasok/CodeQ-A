/* Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

Example 1:

Input: ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
Note:

All given inputs are in lowercase letters a-z.
*/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var index : Int = 1
        
        if strs.count == 0{
            return ""
        }
        
        var commonString : String = strs[0]
        while index <= (strs.count - 1){
        
            if commonString == ""{
                index = strs.count
            }else if strs[index].hasPrefix(commonString){
                index += 1
            }else{
                commonString.removeLast()
            }
        
        }
    
        return commonString
    }
}
