class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let wordRegex = "^([A-Z]*|[A-Z][a-z]*|[a-z]*)$"
        if let range = word.range(of:wordRegex, options: [.regularExpression]) {
            if !range.isEmpty {
                return true
            }
        }
        
        return false
    }
}
