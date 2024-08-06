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
    
    init(id: UUID, url: String, username: String, password: String) {
        self.id = id
        self.url = url
        self.username = username
        self.password = password
    }
    
    func fuehreAus(aktion: () -> ()) {
        
        aktion()
    }

}

var tresorItem1 = TresorItem(id: UUID(), url: "www.facebook.de", username: "facebookUser", password: "pass1234")
var tresorItem2 = TresorItem(id: UUID(), url: "www.youtube.de", username: "youtubeUser", password: "pass2345")
var tresorItem3 = TresorItem(id: UUID(), url: "www.google.de", username: "googleUser", password: "pass3456")
var tresorItem4 = TresorItem(id: UUID(), url: "www.1und1.de", username: "1und1User", password: "pass4567")
var tresorItem5 = TresorItem(id: UUID(), url: "www.instagram.de", username: "instagramUser", password: "pass5678")


// Alle Einträge werden hier für das Programm gespeichert
var ItemList = [
    
    tresorItem1,
    tresorItem2,
    tresorItem3,
    tresorItem4,
    tresorItem5
    
]
