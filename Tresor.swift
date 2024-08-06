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
    
    
// 1.5. BONUS Aufgabe
    
    func suche(nachWebsite website: String) {
        if let ergebnis = sucheWebsite(website: website, index: 0) {
            print("""
    Ergebnis gefunden! \(ergebnis)
    Website:  \(meinTresor.tresorItemsList[ergebnis].url)
    Username: \(meinTresor.tresorItemsList[ergebnis].username)
    Passwort: \(meinTresor.tresorItemsList[ergebnis].password)
    """)
        }
        else {
            print("Eintrag nicht gefunden")
        }
    }
    
    private func sucheWebsite(website: String, index: Int) -> Int? {
        
        if index < tresorItemsList.count {
            return nil
        }
        
        if website == tresorItemsList[index].url {
            return index
        }
        else {
            return sucheWebsite(website: website, index: index + 1)
        }
    }
}


