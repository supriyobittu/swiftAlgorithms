
//  Created by Supriyo Mondal on 25/07/21.
//  Copyright © 2021 Supriyo Mondal. All rights reserved.
//

/*

Reverse a linked list using Linked Lists

*/


import Foundation

func reverseALinkedList(list: ListNode?) -> ListNode? {
        var reversed: ListNode?
        
        var prevNode: ListNode? = nil
        var currentNode: ListNode? = list
        var nextNode: ListNode? = currentNode!.next
        var tempNode = currentNode
        
        if nextNode == nil {
            return list
        }
        
        while nextNode != nil {
            prevNode = currentNode
            currentNode = nextNode
    
            nextNode = nextNode!.next
            prevNode!.next = nil
            if var tempList = reversed {
                reversed = ListNode(currentNode!.val)
                reversed!.next = tempList
            } else {
                reversed = ListNode(currentNode!.val)
                reversed!.next = prevNode
            }
            
        }
        
       
        return reversed
    }