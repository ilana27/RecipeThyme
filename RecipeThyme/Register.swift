//
//  LogIn.swift
//  RecipeThyme
//
//  Created by Ilana Nguyen on 3/25/21.
//

import SwiftUI
import Firebase
//import GoogleSignIn


struct Register: View {
    //@State private var text = ""
    
    @State var email = ""
        @State var password = ""

        var body: some View {
            VStack {
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                Button(action: { login() }) {
                    Text("Sign in")
                }
            }
            .padding()
        }

        func login() {
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    print(error?.localizedDescription ?? "")
                } else {
                    print("success")
                }
            }
        }
    
    
}



struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
