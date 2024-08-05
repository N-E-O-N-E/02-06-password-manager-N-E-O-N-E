//
//  TresorItem.swift
//  02-06 Password Manager
//
//  Created by Markus Wirtz on 05.08.24.
//

import Foundation

// Aufgabe 1.2

struct TresorItem {
    
    let id: Int
    let url: String
    let username: String
    let password: String

}

var tresorItem1 = TresorItem(id: 1, url: "www.facebook.de", username: "facebookUser", password: "1234")
var tresorItem2 = TresorItem(id: 2, url: "www.youtube.de", username: "youtubeUser", password: "2345")
var tresorItem3 = TresorItem(id: 3, url: "www.google.de", username: "googleUser", password: "3456")
var tresorItem4 = TresorItem(id: 4, url: "www.1und1.de", username: "1und1User", password: "4567")
var tresorItem5 = TresorItem(id: 5, url: "www.instagram.de", username: "instagramUser", password: "5678")

var ItemList = [tresorItem1, tresorItem2, tresorItem3, tresorItem4, tresorItem5]
