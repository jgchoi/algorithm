/*
 Given a binary tree, return all root-to-leaf paths.
 
 For example, given the following binary tree:
 
 1
 /   \
 2     3
 \
 5
 All root-to-leaf paths are:
 
 ["1->2->5", "1->3"]
 Credits:
 Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        if root == nil { return [] }
        var result: [String] = []
        func helper(_ path: String, _ root: TreeNode?) {
            if let root = root {
                var nextPath = ""
                if !path.isEmpty { nextPath = path + "->"}
                nextPath = nextPath + "\(root.val)"
                if root.left == nil && root.right == nil {
                    result.append(nextPath)
                } else {
                    helper(nextPath, root.left)
                    helper(nextPath, root.right)
                }
            }
        }
        helper("", root)
        return result
    }
}
