class Solution {
    
    func bitCount(_ num: Int) -> Int {
        var result = 0
        var i = num
        while i != 0 {
            if i & 1 == 1 {
                result += 1
            }
            i = i >> 1
        }
        return result
    }
    
    func isPrimeNumber(_ num: Int) -> Bool {
        if num < 2 { return false }
        if num < 4 { return true }
        for i in 2...Int(sqrt(Double(num))) {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
    
    func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
        var result = 0
        var primeNumberMap:[Int:Bool] = [:]
        for i in L...R {
            var bits = bitCount(i)
            var isPrime = false
            if primeNumberMap[bits] != nil {
                isPrime = primeNumberMap[bits]!
            } else {
                isPrime = isPrimeNumber(bits)
                primeNumberMap[bits] = isPrime
            }
            if isPrime {
                result += 1
            }
        }
        return result
    }
}
