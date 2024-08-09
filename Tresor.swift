//
//  Tresor.swift
//  02-06 Password Manager
//
//  Created by Markus Wirtz on 05.08.24.
//

import Foundation

// Aufgabe 1.3

class Tresor {
    
    private var masterpassword: String {
        didSet {
            observer()
        }
    }
    var tresorItemsList: [TresorItem] = []
    // Liste wird in der Main gefüllt beim Instanzieren des Tresors
    
    // Aufgabe 4.4.
    
    let observer: () -> ()
    
    init(masterpassword: String, observer: @escaping () -> ()) {
        self.masterpassword = masterpassword
        self.observer = observer
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
    
    // Aufgabe 3.3 ------------------------------------------------------------
    
    func printItemsForEach(Passwort p: String) {
        
        if p == meinTresor.masterpassword {
            print("\nMasterpasswort korrekt! \n")
            
            tresorItemsList.sorted{$0.url.lowercased() < $1.url.lowercased()}.forEach { elements in
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
    
    // Übergabe der gesuchten Domain z.B. www.google.de
    func suche(nachWebsite website: String) {
        // übergibt einen Standardindex 0 und die eingegebene Domain
        if let ergebnis = sucheWebsite(website: website, index: 0) {
            // ergebnis liefert einen Int für den Index der Liste tresorItemsList
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
    
    // empfängt den Standardindex und die eingabe der gesuchten Domain
    private func sucheWebsite(website: String, index: Int) -> Int? {
        // ist der größer/gleich der gesamtanzahl dann gib nil aus
        if index >= meinTresor.tresorItemsList.count {
            return nil
        }
        // ist website in tresorItemsList gefunden (==), dann liefer dessen Index zurück
        if website == meinTresor.tresorItemsList[index].url {
            return index
        }
        else {
            // rekursion - ruft sich selbt wieder auf und erhöht den index bis die url "website" matcht
            return sucheWebsite(website: website, index: index + 1)
        }
    }
    
    // 3.1. Tresoreinträge sortieren
    
    func sortItems() {
       
        tresorItemsList.sort { $0.url < $1.url }
        
    }
    
    // 3.2
    func filterItems(filterNach: String) -> [TresorItem] {
        return tresorItemsList.filter { $0.url.contains(filterNach) }
    }
    
    // Aufgabe 4.4 Masterpasswort ändern
    
    func changeMasterpassword(oldPW: String, newPW: String) {
        
        if oldPW == masterpassword {
            print("Das Kennwort war korrekt!")
            masterpassword = newPW
            sleep(2)
        } else {
            print("Das eingebebene Passwort war nicht korrekt!")
            sleep(2)
        }
        
    }
    
}
    

    



