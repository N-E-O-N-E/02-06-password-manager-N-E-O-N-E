//
//  main.swift
//  02-06 Password Manager
//
//  Created by Fabian Moreno on 05.08.24.
//

import Foundation

// Mindestanforderungen Montag

// Tresor erstellen
var meinTresor = Tresor(masterpassword: "admin")

// Liste an Items übergeben
meinTresor.tresorItemsList.append(contentsOf: ItemList)

// Einzelnes Item übergeben
meinTresor.tresorItemsList.append(TresorItem(id: UUID(), url: "www.web.de", username: "webUser", password: "6789"))

/*
print("Bitte gib das Masterpasswort des Tresors ein: ")
meinTresor.printItems(Passwort: readLine()!)
*/

// Aufgabe 2.1 Dienstag
// Wurde auch in Menü übernommen von Aufgabe 1.4
var neuesItem = TresorItem.fuehreAus(TresorItem(id: UUID(), url: "www.microsoft.de", username: "microsoftUser", password: "090909"))

neuesItem(druckeBeschreibung)
neuesItem(druckeSpeicherInfo)

var weiteresItem = TresorItem(id: UUID(), url: "URL10", username: "user10", password: "1010")
weiteresItem.fuehreAus(aktion: druckeBeschreibung)
weiteresItem.fuehreAus(aktion: druckeSpeicherInfo)

// Aufgabe 2.2
passwordLength("Test")


// Weiterführende 1.4 Montag

func menue() {
   
    print("""

####### TRESOR MENÜ #######
---------------------------

Treffen Sie eine Auswahl

    1) Neuer Eintrag anlegen
    2) Einträge ausgeben
    3) Website suchen
    4) Username suchen
    5) Passwortlänge prüfen
    6) Einräge sortiert ausgeben
    7) Filtern nach URL
    8) Alle ausgeben mit forEach und Sorted

    9) Programm beenden

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
            
            let addElement = TresorItem(id: UUID(), url: newURL, username: newUsername, password: newPasswort)
            meinTresor.addItem(addElement)
            addElement.fuehreAus(aktion: druckeBeschreibung)
            addElement.fuehreAus(aktion: druckeSpeicherInfo)
            
            
        case 2: // alle in der Liste Ausgeben
            print("Tresordaten ausgeben!\n")
            print("Bitte gib das Masterpasswort des Tresors ein: ")
            meinTresor.printItems(Passwort: readLine()!)
        case 3:
            print("Bitte geben Sie die URL des gesuchten Datensatzes ein: ")
            meinTresor.suche(nachWebsite: readLine()!)
            
        case 4:
            
            // Aufgabe 2.3 Weiterführend
            
            print("Gib den gesuchten Nutzername ein: ")
            let eingabe = readLine()!
            
            for item in meinTresor.tresorItemsList {
            
                if checkUsername(item, eingabe) {
                    print("Nutzer '\(item.username)' wurde gefunden!\n")
                }
            }
     
        case 5:
            
            // Aufgabe 2.4 Bonus
            
            print("Passwort-Check auf Mindestlänge!")
            
            for item in meinTresor.tresorItemsList {
            
                if checkPasswortLength(item) {
                    print("🟢 \(item.url)")
                } else {
                    print("🔴 \(item.url)")
                }
            }
     
        case 6:
            // 3.1
            meinTresor.sortItems()
            
            print("Tresordaten sortiert ausgeben!\n")
            print("Bitte gib das Masterpasswort des Tresors ein: ")
            meinTresor.printItems(Passwort: readLine()!)
            
        case 7:
            // 3.2
            print("Domain zur Suche eingeben: \n")
            let result = meinTresor.filterItems(filterNach: readLine()!)
            
            print("""
                  
                  UUID: \(result[0].id)
                  User: \(result[0].username)
                  URL:  \(result[0].url)
                  """)
            
        case 8:
            // 3.3
            print("Tresordaten sortiert ausgeben mit forEach und sorted!\n")
            print("Bitte gib das Masterpasswort des Tresors ein: ")
            meinTresor.printItemsForEach(Passwort: readLine()!)
            
        case 9:
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




