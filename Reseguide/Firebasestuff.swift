//
//  Firebasestuff.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-12-02.
//

import Foundation
import SwiftUI
import Firebase

class FireBaseStuff : ObservableObject {
    
    var ref: DatabaseReference!
}

class LoginInfo: Identifiable {
    
    let UserID = UUID()
    
    var email = ""
    var password = ""
    
}

