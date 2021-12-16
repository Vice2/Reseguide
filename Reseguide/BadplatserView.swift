//
//  BadplatserView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-12-13.
//

import SwiftUI
import Firebase

/*
 NavigationLink(destination: AventyrsbadetView()){
     TilesView(tilepic: "hogevallsbadet", tileicon: "", tiletext: "Högevalls Badet")
 }
 */

struct BadplatserView: View {
    
    let bakgrunden = LinearGradient(
        colors: [Color.blue, Color.white],
        startPoint: .top, endPoint: .bottom)
    
    //let bakgrunden = RadialGradient(gradient: Gradient(colors: [.gray, .blue]), center: .center, startRadius: 60, endRadius: 500)
    
    
    var ref: DatabaseReference!
    
    init() {
        ref = Database.database().reference()
    }
    
    var body: some View {
        ZStack{
            bakgrunden
                            .scaledToFill()
                            .frame(width: 500, height: 900)
                            .ignoresSafeArea()
            ScrollView {
                    VStack {
                    
                        NavigationLink(destination: AventyrsbadetView()){
                            TilesView(tilepic: "aventyrsbadet", tileicon: "", tiletext: "Äventyrsbadet")
                        }
                    
                        NavigationLink(destination: DalbyKalkbrottView()){
                            TilesView(tilepic: "dalbykalkbrott", tileicon: "", tiletext: "Dalby Kalkbrott")
                        }
                        
                        NavigationLink(destination: HogevallsbadetView()){
                            TilesView(tilepic: "hogevallsbadet", tileicon: "", tiletext: "Högevalls Badet")
                        }
                        
                        NavigationLink(destination: OdeshogView()){
                            TilesView(tilepic: "odeshog", tileicon: "", tiletext: "Ödeshög")
                        }
                    
                }.frame(width: 400, height: 900)
            }
        }
    }
}

struct BadplatserView_Previews: PreviewProvider {
    static var previews: some View {
        BadplatserView()
    }
}
