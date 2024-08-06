//
//  Closures.swift
//  02-06 Password Manager
//
//  Created by Markus Wirtz on 06.08.24.
//

import Foundation

// Aufgabe 2.1

let druckeBeschreibung: () -> () = { () -> () in
    
    print("Das hier ist ein Tresor Eintrag")
    
}

let druckeSpeicherInfo: () -> () = { () -> () in
    
    print("Änderungen gespeichert!")
}



// Aufgabe 2.2

let passwordLength: (String) -> () = { (passwort) -> () in
    if passwort.count >= 6 {
        print("Das Passwort ist gut!")
    } else {
        print("Das Passwort ist leider zu kurz!")
    }
}

// Aufgabe 2.3

let checkUsername: (TresorItem, String?) -> Bool = { ( tresorItem , username) -> Bool in
    
    if username?.lowercased() == tresorItem.username.lowercased() {
        return true
    } else {
        return false
    }
}

// Aufgabe 2.4

let checkPasswortLength: (TresorItem) -> Bool = { (tresorItem) -> Bool in
    
    let validPasswordLength: Int = 5
    
    if tresorItem.password.count >= validPasswordLength {
        return true
    } else {
        return false
    }
}

