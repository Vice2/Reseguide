//
//  MainView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-12-05.
//

import SwiftUI
import Firebase

struct MainView: View {
    
    var ref: DatabaseReference!
    
    /*
     NavigationLink(destination: VandringView()){
         TilesView(tilepic: "lookout", tileicon: "icondunbar", tiletext: "Utiktsplatser")
     }
     */
    @State var login = false
    
    init() {
        ref = Database.database().reference()
    }
    
    var body: some View {
        
        
       
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
            VStack {
                HStack {
                    NavigationLink(destination: BadplatserView()){
                        TilesView(tilepic: "beachgirl", tileicon: "icon_wave", tiletext: "Badplatser")
                    }
                    
                    
                    NavigationLink(destination: VandringView()){
                        TilesView(tilepic: "hiking", tileicon: "iconmountain", tiletext: "Vandring")
                    }
                    
                }
                HStack {
                    NavigationLink(destination: VandringView()){
                        TilesView(tilepic: "museum", tileicon: "iconmuse", tiletext: "Museum")
                    }
                    
                    
                    NavigationLink(destination: VandringView()){
                        TilesView(tilepic: "lookout", tileicon: "icondunbar", tiletext: "Utiktsplatser")
                    }
                    
                }
                Button(action: {
                  				
                    let firebaseAuth = Auth.auth()
                do {
                  try firebaseAuth.signOut()
                } catch let signOutError as NSError {
                  print("Error signing out: %@", signOutError)
                }
                  
                    
                }) {
                    Text("Logga ut")
                        .foregroundColor(.red)
                }
            }
            
        }.onAppear(perform: {
            print("NU HÄNDER viewDidAppear")
            
            if(Auth.auth().currentUser == nil)
            {
               login = false
            } else {
                login = true
            }
        })
        /*
         .fullScreenCover(isPresented: $login, content: {
             ContentView()
         })
         */
        
}

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
