/*
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 231.
 
 Example:
 
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
 ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
*/

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    let xBin = Array(pad(String(x, radix: 2), size: 32))
    let yBin = Array(pad(String(y, radix: 2), size: 32))
    var result = 0
    
    for i in 0..<xBin.count {
        if xBin[i] != yBin[i] {
            result += 1
        }
    }
    return result
}

func pad(_ str: String, size: Int) -> String {
    var padded = str
    for i in 0..<(size-str.count) {
        padded = "0" + padded
    }
    return padded
}
