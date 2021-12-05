//
//  ContentView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-11-23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        NavigationView {
            VStack {
                Image("Reseguide Vertical")
                    .padding(.bottom, 150.0)
                
                
                NavigationLink(destination: LoginView()){
                    WhiteButton(blacktext: "Logga in")
                }
            
                NavigationLink(destination: CreateAccountView()){
                    GreyButton(whitetext: "Skapa konto")
                }
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

