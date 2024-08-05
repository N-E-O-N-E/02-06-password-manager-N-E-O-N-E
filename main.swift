//
//  main.swift
//  02-06 Password Manager
//
//  Created by Fabian Moreno on 05.08.24.
//

import Foundation

// Mindestanforderungen

// Tresor erstellen
var meinTresor = Tresor(masterpassword: "admin")
// Liste an Items übergeben
meinTresor.tresorItemsList.append(contentsOf: ItemList)
// Einzelnes Item übergeben
meinTresor.addItem(TresorItem(id: UUID(), url: "www.web.de", username: "webUser", password: "6789"))

/*
print("Bitte gib das Masterpasswort des Tresors ein: ")
meinTresor.printItems(Passwort: readLine()!)
*/


// Weiterführende 1.4

func menue() {
    print("""

####### TRESOR MENÜ #######
---------------------------

Treffen Sie eine Auswahl

    1) Neues Element in Tresor anlegen
    2) Tresorinhalt ausgeben

    3) Programm beenden

""")
}

var menueStatus: Bool = true

repeat {
    
    menue()
    
    if let eingabe = readLine(), let auswahl = Int(eingabe) {
        
        switch auswahl {
            
        case 1: // Neues Item übergeben
            print("Neues Tresor Item Anlegen\n")
            
            print("Geben Sie die URL ein:")
            let newURL = readLine()!
            print("Geben Sie den Username ein:")
            let newUsername = readLine()!
            print("Geben Sie das Passwort ein:")
            let newPasswort = readLine()!
            
            meinTresor.addItem(TresorItem(id: UUID(), url: newURL, username: newUsername, password: newPasswort))
            
        case 2: // alle in der Liste Ausgeben
            print("Tresordaten ausgeben!\n")
            print("Bitte gib das Masterpasswort des Tresors ein: ")
            meinTresor.printItems(Passwort: readLine()!)
            
        case 3:
            print("Programm wird beendet!")
            menueStatus = false
            //exit(0)
        default:
            print("Ungültige Eingabe. Bitte wählen Sie eine Option zwischen 1 und 3.")
        }
        
    } else {
        print("Ungültige Eingabe. Bitte wählen Sie eine Option zwischen 1 und 3.")
    }
    
} while menueStatus

