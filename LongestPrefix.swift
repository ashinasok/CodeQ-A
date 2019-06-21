//Longest Common Prefix

class CommonPrefix : NSObject {

func longestCommonPrefix(_ strs: [String]) -> String {
    
    var commonString : String = strs[0]
    var index : Int = 1
    
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
