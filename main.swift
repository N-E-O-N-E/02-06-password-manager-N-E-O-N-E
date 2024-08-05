//
//  main.swift
//  02-06 Password Manager
//
//  Created by Fabian Moreno on 05.08.24.
//

import Foundation

// Mindestanforderungen

var meinTresor = Tresor(masterpassword: "admin", tresorItemsList: ItemList)
meinTresor.addItem(TresorItem(id: 6, url: "www.web.de", username: "webUser", password: "6789"))

/*
print("Bitte gib das Masterpasswort des Tresors ein: ")
meinTresor.printItems(Passwort: readLine()!)
*/


// Weiterführende

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
            
        case 1:
            print("Neues Tresor Item Anlegen\n")
            
            print("Geben Sie die URL ein:")
            var newURL = readLine()!
            print("Geben Sie den Username ein:")
            var newUsername = readLine()!
            print("Geben Sie das Passwort ein:")
            var newPasswort = readLine()!
            
            meinTresor.addItem(TresorItem(id: Int.random(in: Range(999...99999)), url: newURL, username: newUsername, password: newPasswort))
            
        case 2:
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

