
import Foundation

class Stack : LinkedList {
    
    override var description: String {
        return "(Stack<--)"+super.description+"<--"
    }
    
    func push(object: Any){
        self.add(object: object);
    }
    func pop() -> Any? {
        
        if let n = tail {
            self.remove(node: n)
            return n.object
        } else {
            return nil
        }
    }
}
