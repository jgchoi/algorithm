class Solution {
    func addDigits(_ num: Int) -> Int {
        return num - (9 * Int(((num-1)/9)))
    }
}
