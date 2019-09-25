//
//  Grade.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 05/09/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct Grade: View {
    @State var numberOfSubjects = ""
    @State var showSubjectsFields = false
    var body: some View {
        VStack {
            Text("Enter number of subjects")
            TextField("Enter number of subjects", text: $numberOfSubjects)
            .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.leading, 80)
                .padding(.trailing, 80)
            Button(action: {
                
            }) {
                Text("Enter")
            }
            
        }
        .padding(.top)
    }
}

struct Grade_Previews: PreviewProvider {
    static var previews: some View {
        Grade()
    }
}
