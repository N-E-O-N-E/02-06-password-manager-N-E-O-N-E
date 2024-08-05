//
//  main.swift
//  02-06 Password Manager
//
//  Created by Fabian Moreno on 05.08.24.
//

import Foundation

var meinTresor = Tresor(masterpassword: "admin", tresorItemsList: ItemList)

meinTresor.addItem(TresorItem(id: 6, url: "www.web.de", username: "webUser", password: "6789"))

print("Bitte gib das Masterpasswort des Tresors ein: ")
meinTresor.printItems(Passwort: readLine()!)
    //Nutze die zweite Methode, um die Ausgabe zu testen.







