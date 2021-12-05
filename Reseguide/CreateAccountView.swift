//
//  CreateAccountView.swift
//  Reseguide
//
//  Created by Bashar Al Bagdadi on 2021-11-23.
//

import SwiftUI
import Firebase

struct CreateAccountView: View {
    
    
    @State var emailfield: String = ""
    @State var passwordfield: String = ""
    
    var ref: DatabaseReference!
    
    init() {
        ref = Database.database().reference()
    }
    
    

    var body: some View {
        VStack {
            
            Image("Reseguid Horizontal")
                .resizable()
                .scaledToFit()
                .frame(width: 100, alignment: .top)
           
            Spacer()
            
            TextField("Epost", text: $emailfield)
                .padding(.all, 10.0)
                .border(Color.black)
                .shadow(radius: 50)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                
            SecureField("Lösenord", text: $passwordfield)
                .padding(.all, 10.0)
                .border(Color.black)
                .shadow(radius: 50)
                
                
                          
            Button(action: {
                Auth.auth().createUser(withEmail: emailfield, password: passwordfield) { authResult, error in
                    if(error == nil)
                    {
                        // Hurra. Login ok
                        print("Account created")
                        
                    } else {
                        // Ajdå. Login fel
                        print("New account error")
                    }
                }
            }) {
                GreyButton(whitetext: "Skapa konto")
            }
            
            Spacer()
        
                
        }
        .padding(.horizontal)

    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
