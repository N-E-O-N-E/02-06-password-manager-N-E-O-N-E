//
//  TresorItem.swift
//  02-06 Password Manager
//
//  Created by Markus Wirtz on 05.08.24.
//

import Foundation

// Aufgabe 1.2
// Aufgabe 2.1 erweitern

struct TresorItem {
    
    let id: UUID
    let url: String
    let username: String
    let password: String
    
    func fuehreAus(aktion: () -> ()) {
        aktion()
    }
    
    // Aufgabe 4.2
    
    func checkConnection(checkURL: (Bool) -> Void)  {
        
        print("Die Verbidnung zur Website \(url) wird geprüft!")
        checkURL(Bool.random())
        
        Thread.sleep(forTimeInterval: 5)

    }

}

var tresorItem1 = TresorItem(id: UUID(), url: "www.facebook.de", username: "facebookUser", password: "pass1234")
var tresorItem2 = TresorItem(id: UUID(), url: "www.youtube.de", username: "youtubeUser", password: "pass2345")
var tresorItem3 = TresorItem(id: UUID(), url: "www.google.de", username: "googleUser", password: "pass3456")
var tresorItem4 = TresorItem(id: UUID(), url: "www.1und1.de", username: "1und1User", password: "pass4567")
var tresorItem5 = TresorItem(id: UUID(), url: "www.instagram.de", username: "instagramUser", password: "pass5678")
var tresorItem6 = TresorItem(id: UUID(), url: "www.tiktoc.de", username: "tictokUser", password: "121212")


// Alle Einträge werden hier für das Programm gespeichert
var ItemList = [
    
    tresorItem1,
    tresorItem2,
    tresorItem3,
    tresorItem4,
    tresorItem5,
    tresorItem6
    
]
