
import Foundation
// Aufgabe 4.1

struct Button {
    
    let titel: String
    
    var action: () -> ()
    
    func klick() {
        action()
    }
    
    mutating func changeAction(newAction: @escaping () -> ()) {
        print("Das ist die geänderte Aktion beim Klick!")
        self.action = newAction
        
        action()
    }
    
    
    
}

