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
    func tree2str(_ t: TreeNode?) -> String {
        if let t = t {
            var result = ""
            result += "\(t.val)"
            if t.left == nil && t.right != nil {
                result += "()(\(tree2str(t.right!)))"
            } else {
                if t.left != nil {
                    result += "(\(tree2str(t.left)))"
                }
                if t.right != nil {
                    result += "(\(tree2str(t.right)))"
                }
            }
            return result
            
        } else {
            return ""
        }
    }
    
}
