//
//  WhiteButton.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-11-23.
//

import SwiftUI

struct WhiteButton: View {
    
    @State var blacktext = "Hejsan"
    
    var body: some View {
        Text(blacktext)
        .frame(width: 200.0, height: 30.0)
        .background(Color.white)
        .foregroundColor(.black)
        .font(.body)
        .cornerRadius(20)
        .shadow(radius: /*@START_MENU_TOKEN@*/25/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        WhiteButton()
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
    }
}
