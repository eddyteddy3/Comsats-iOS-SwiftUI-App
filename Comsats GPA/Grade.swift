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
                .foregroundColor(.orange)
                .frame(width: 100, height: 40)
                .background(Color(.gray))
                
                
            }.padding()
            
            HStack {
                Text("Subjects").padding(.trailing, 80)
                Text("GPA").padding()
                Text("Credit Hours")
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Proceed")
            }
            .frame(width: 200, height: 50)
            .foregroundColor(.orange)
            .background(Color(.gray))
            .padding(.bottom)
        }
        
    }
}

struct Grade_Previews: PreviewProvider {
    static var previews: some View {
        Grade()
    }
}
