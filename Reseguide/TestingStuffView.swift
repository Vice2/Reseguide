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
        
        
        let bakgrunden = LinearGradient(
            colors: [Color.red, Color.orange],
            startPoint: .top, endPoint: .bottom)
        
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
            
            ZStack {
                bakgrunden
                                .ignoresSafeArea()
                Text("HEJSAN")
                    .font(.body)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .navigationBarTitle("RHorizontal", displayMode: .automatic)
                    .frame(width: 150, height: 100, alignment: .center)
                    .background(.blue)
                    .cornerRadius(15.0)
                    .shadow(color: .black, radius: 10)
            }
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
