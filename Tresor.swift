//
//  Tresor.swift
//  02-06 Password Manager
//
//  Created by Markus Wirtz on 05.08.24.
//

import Foundation

// Aufgabe 1.3

class Tresor {
    
    private let masterpassword: String
    var tresorItemsList: [TresorItem] = []
    
    init(masterpassword: String) {
        self.masterpassword = masterpassword
    }
    
    func addItem(_ item: TresorItem...) {
        tresorItemsList.append(contentsOf: item)
    } //EndOfFunc
    
    func printItems(Passwort p: String) {
        
        if p == meinTresor.masterpassword {
            print("\nMasterpasswort korrekt! \n")
            
            for elements in tresorItemsList {
                print("""
      AccountID  \(elements.id)
         Domain  \(elements.url)
    Nutzernamen  \(elements.username)
       Passwort  \(elements.password)
    
    """)
            }
            
        } else {
            print("Falsches Masterpasswort!")
        }
        
    } //EndOfFunc
    
}


