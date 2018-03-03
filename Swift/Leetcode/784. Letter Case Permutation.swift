class Solution {
    func letterCasePermutation(_ S: String) -> [String] {
        var result: [String] = []
        var charArray = Array(S)
        BFS(&result, &charArray, index: 0)
        return result
    }
    
    func BFS(_ result: inout [String], _ charArray: inout [String.Element], index: Int) {
        if index == charArray.count {
            result.append(String(charArray))
        } else {
            if Int(String(charArray[index])) == nil {
                charArray[index] = Array(String(charArray[index]).uppercased()).first!
                BFS(&result, &charArray, index: index+1)
                charArray[index] = Array(String(charArray[index]).lowercased()).first!
            }
            BFS(&result, &charArray, index: index+1)
        }
        
    }
}
