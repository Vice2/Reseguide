//
//  MainView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-12-05.
//

import SwiftUI
import Firebase

struct MainView: View {
    
    
    @State var login = true
    
    var body: some View {
        
        
        EmptyView().fullScreenCover(isPresented: $login, content: {
            ContentView()
        })
        
        /*NavigationView {
        HStack(alignment: .center) {
            GeometryReader { geo in
                Image("Reseguid Horizontal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.4)
            }
        }
    }
    }*/
        
        NavigationView {
            Text("HEJSAN")
                .navigationBarTitle("Main View", displayMode: .automatic)
        }.onAppear(perform: {
            print("NU HÄNDER viewDidAppear")
            
            if(Auth.auth().currentUser == nil)
            {
               login = false
            } else {
                login = true
            }
        })
}

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
