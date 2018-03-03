class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = []
        for i in 1...n {
            var key = ""
            if i%3 == 0 {
                key += "Fizz"
            }
            if i%5 == 0 {
                key += "Buzz"
            }
            if key.isEmpty {
                key += "\(i)"
            }
            result.append(key)
        }
        return result
    }
}
