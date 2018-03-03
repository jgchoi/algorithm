class Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var length = Int(sqrt(Double(area)))
        var width = Int(sqrt(Double(area)))
        while length * width != area {
            
            length += 1
            width = area/length
            
        }
        return [length, width]
    }
}
