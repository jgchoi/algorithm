/*
 Given an array where elements are sorted in ascending order, convert it to a height balanced BST.
 
 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
 
 
 Example:
 
 Given the sorted array: [-10,-3,0,5,9],
 
 One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:
 
 0
 / \
 -3   9
 /   /
 -10  5
 */

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.isEmpty { return nil }
        return createBTS(nums, 0, nums.count-1)
    }
    
    func createBTS(_ nums: [Int], _ low: Int, _ high: Int) -> TreeNode? {
        if low > high { return nil }
        let mid = low + (high-low)/2
        let node = TreeNode(nums[mid])
        node.left = createBTS(nums, low, mid-1)
        node.right = createBTS(nums, mid+1, high)
        return node
    }
    
}
