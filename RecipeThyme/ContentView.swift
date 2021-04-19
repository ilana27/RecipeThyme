//
//  ContentView.swift
//  RecipeThyme
//
//  Created by Ilana Nguyen on 3/25/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Image("Logo")
                    .resizable()
                    .frame(width: 250, height: 250)
       
                NavigationLink(destination: Register()) {
                    Text("Login")
                    .frame(minWidth: 0, maxWidth: 100)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    .font(.body)
                }
                NavigationLink(destination: Register()) {
                    Text("Register")
                    .frame(minWidth: 0, maxWidth: 100)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
                    .font(.body)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
