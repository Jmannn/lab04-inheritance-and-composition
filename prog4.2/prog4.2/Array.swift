//
//  Array.swift
//  prog4.2
//
//  Created by Johnathan Mann on 8/14/18.
//  Copyright © 2018 Johnathan Mann. All rights reserved.
//



class Array{
    
    private var _count: Int
    private var list = SortableList()
    
    init(list: LinkedList? = nil) {
        self._count = 0
        self.list = SortableList(list: list)
    }
    subscript(index: Int) -> Any {
        get {
            return self.get(index: index)
        }
        set(newObject) {
            self.set(object: newObject, at: index)
        }
    }
    var count: Int {
        return self._count
    }
   var description: String {
    return "(Array 0->)" + self.list.description + "<-" + String(self.count-1)
    }
    
    func get(index: Int) -> Any{

        
        let node = list.getNodeAtIndex(index: index)
        return node!.object
    }
    
    func set(object: Any, at: Int){


        
        let node = list.getNodeAtIndex(index: at)
        node!.object = object



    }
    func add(object: Any) {
        list.add(object: object)
        self._count += 1
    }
    
    func sort(isObject: (Any, Any) -> Bool){
        list.sort(isObject: isObject)
    }
    
    func remove(node: Node) -> Bool {
        let nodeRemoved: Bool = list.remove(node: node)
        if nodeRemoved {
            self._count -= 1
        }
        return nodeRemoved
    }}
