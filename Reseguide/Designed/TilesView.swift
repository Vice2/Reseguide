//
//  TilesView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-12-13.
//

import SwiftUI
import Firebase

struct TilesView: View {
    
    @State var tilepic = "beachgirl"
    @State var tileicon = "icon_wave"
    @State var tiletext = "Badda"
    
    var body: some View {
        
        Group {
            VStack {
                        ZStack {
                            Image(tilepic)
                                .overlay(
                                    Image(tileicon)
                                        .padding(.vertical, -30.0)
                                        .offset(y: 65)
                                )
                        }
                        Text("")
                            .foregroundColor(Color.white)
                            .padding(1)
                        
                        Text(tiletext)
                            .font(.callout)
                            .frame(width: 150, height: 50)
                            .background(.white)
                            .cornerRadius(20)
                            .foregroundColor(.black)
            }
        }
        
        .background(Color.white)
        .clipped()
        .cornerRadius(20)
        .shadow(color: Color.black, radius: 10, x: 0, y: 0)
        .padding(30)
    }
}

struct TilesView_Previews: PreviewProvider {
    static var previews: some View {
        TilesView()
            //.previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
