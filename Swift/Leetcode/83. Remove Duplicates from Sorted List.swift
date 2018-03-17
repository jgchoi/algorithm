/**
Given a sorted linked list, delete all duplicates such that each element appear only once.

For example,
Given 1->1->2, return 1->2.
Given 1->1->2->3->3, return 1->2->3.



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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var currentHead = head
        while currentHead != nil {
            if let next = currentHead?.next {
                if currentHead!.val == next.val {
                    currentHead?.next = next.next
                } else {
                    currentHead = currentHead?.next
                }
            } else {
                currentHead = nil
            }
            
        }
        return head
    }
}
