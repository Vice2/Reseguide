//
//  TestingStuffView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-11-25.
//

import SwiftUI
import Firebase

struct TestingStuffView: View {
    
    
    @State var login = false
    
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
                .navigationBarTitle("Reseguid Horizontal", displayMode: .automatic)
        }.onAppear(perform: {
            print("NU HÄNDER viewDidAppear")
            
            if(Auth.auth().currentUser == nil)
            {
               login = true
            } else {
                login = false
            }
        })
}
}
struct TestingStuffView_Previews: PreviewProvider {
    static var previews: some View {
        TestingStuffView()
    }
}
