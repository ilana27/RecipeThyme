//
//  RecipeDisplay.swift
//  RecipeThyme
//
//  Created by Ilana Nguyen on 4/15/21.
//

import SwiftUI

struct RecipeDisplay: View {
    var tutors: [Tutor] = []
    
    var body: some View {
        NavigationView {
               List(tutors) { tutor in
                   NavigationLink(destination: Text(tutor.name)) {
                       Image(tutor.imageName)
                       VStack(alignment: .leading) {
                           Text(tutor.name)
                           Text(tutor.headline)
                               .font(.subheadline)
                               .foregroundColor(.gray)
                       }
                   }
               }
               .navigationBarTitle(Text("Tutors"))
           }
    }
}

#if DEBUG
struct RecipeDisplay_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDisplay(tutors: testData)
    }
}
#endif
