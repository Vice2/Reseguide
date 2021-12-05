//
//  ReseguideApp.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-11-23.
//

import SwiftUI
import Firebase

@main
struct ReseguideApp: App {
    
    init ()
    {
    FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            //LoginView()
            //TestingStuffView()
            MainView()
            //CreateAccountView()
        
        }
    }
}
