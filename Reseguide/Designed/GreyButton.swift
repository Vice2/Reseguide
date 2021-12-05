//
//  GreyButton.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-11-23.
//

import SwiftUI

struct GreyButton: View {
    
    @State var whitetext = "Svejsan"
    
    var body: some View {
        Button(action:
                {
            print("Logg")
        }) {
            Text(whitetext)
        }   .frame(width: 200.0, height: 30.0)
            .background(Color(red: 0.201, green: 0.28, blue: 0.335))
            .foregroundColor(.white)
            .font(.body)
            .cornerRadius(20)
            .shadow(radius: /*@START_MENU_TOKEN@*/25/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

struct GreyButton_Previews: PreviewProvider {
    static var previews: some View {
        GreyButton()
            .previewLayout(.sizeThatFits)
    }
}
