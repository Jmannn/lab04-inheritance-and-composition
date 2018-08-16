//
//  Array.swift
//  prog4.1
//
//  Created by Johnathan Mann on 8/14/18.
//  Copyright © 2018 Johnathan Mann. All rights reserved.
//



class Array : SortableList{
    
    private var _count: Int
    
    override init(list: LinkedList? = nil) {
        self._count = 0
        super.init(list: list)
    }
    subscript(index: Int) -> Any {
        get {
            return self.get(index: index)
        }
        set(newObject) {
            self.set(object: newObject, at: index)
        }
    }
    override var count: Int {
        return self._count
    }
    override var description: String {
        return "(Array 0->)"+super.description+"<-" + String(self.count-1)
    }
    func get(index: Int) -> Any{

        
        let node = getNodeAtIndex(index: index)
        return node!.object
    }
    
    func set(object: Any, at: Int){


        
        let node = getNodeAtIndex(index: at)
        node!.object = object



    }
    override func add(object: Any) {
        super.add(object: object)
        self._count += 1
    }
    
    override func remove(node: Node) -> Bool {
        let nodeRemoved: Bool = super.remove(node: node)
        if nodeRemoved {
            self._count -= 1
        }
        return nodeRemoved
    }}
