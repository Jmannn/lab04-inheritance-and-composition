//
//  Queue.swift
//  prog4.1
//
//  Created by Johnathan Mann on 8/14/18.
//  Copyright © 2018 Johnathan Mann. All rights reserved.
//

import Foundation

class Queue : LinkedList {
    
    override var description: String {
        return "(Queue<--)"+super.description+"<--"
    }
    
    func put(object: Any){
        self.add(object: object);
    }
    func get() -> Any? {
        
        if let n = head {
            self.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
