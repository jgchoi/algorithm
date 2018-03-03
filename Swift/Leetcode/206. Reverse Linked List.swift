/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previous:ListNode? = nil
        var current = head
        var next = head?.next
        
        while current != nil {
            next = current!.next
            current!.next = previous
            previous = current
            current = next
        }
        return previous
    }
}
