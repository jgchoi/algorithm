/*
 Given two arrays, write a function to compute their intersection.
 
 Example:
 Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].
 
 Note:
 Each element in the result should appear as many times as it shows in both arrays.
 The result can be in any order.
 Follow up:
 What if the given array is already sorted? How would you optimize your algorithm?
 What if nums1's size is small compared to nums2's size? Which algorithm is better?
 What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?


*/

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var map:[Int:(Int,Int)] = [:]
    for i in 0..<nums1.count {
        if map[nums1[i]] == nil {
            map[nums1[i]] = (1, 0)
        } else {
            map[nums1[i]]!.0 += 1
        }
    }
    
    for i in 0..<nums2.count {
        if map[nums2[i]] != nil {
            map[nums2[i]]!.1 += 1
        }
    }
    
    var interesected = map.filter { (k, v) -> Bool in
        return v.0 > 0 && v.1 > 0
    }
    var result = [Int]()
    for item in interesected {
        for i in 0..<min(item.value.0, item.value.1) {
            result.append(item.key)
        }
    }
    return result
}

