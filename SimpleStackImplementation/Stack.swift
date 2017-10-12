//
//  Stack.swift
//  SimpleStackImplementation
//
//  Created by Richard Muraguri Gathogo on 12/10/2017.
//  Copyright © 2017 Richard Muraguri Gathogo. All rights reserved.
//

import Foundation
class Stack{
    var head:Node?
    func pop() -> Int?{
        if let currentHead = head {
            head = currentHead.next;
            return currentHead.data;
        } else {
            return nil
        }
        
    }
    func push(data:Int) {
        let newNode = Node(data: data)
        
        if let currentHead = head {
            newNode.next = currentHead
            head = newNode
        } else{
            head = newNode
        }
    }
    func print() ->  [Int]{
        var list:[Int] = []
        var curr = head;
        while  curr != nil {
            list.append((curr?.data)!)
            curr = curr?.next
        }
        return list
    }
}
