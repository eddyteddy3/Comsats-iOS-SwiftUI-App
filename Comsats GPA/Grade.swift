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
    @State var activated = false
    var body: some View {
        VStack {
            VStack {
                Text("Enter number of subjects")
                textField(placeHolder: "Enter number of subjects", textFieldData: $numberOfSubjects)
                Button(action: {
                    print("Button Tapped")
                    self.activated.toggle()
                }) {
                    Text("Button 1")
                        .foregroundColor(.white)
                        .frame(width: 120, height: 40)
                        .background(Color("color2"))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                        .padding(10)
                }

            }.padding()
            
            HStack {
                Text("Subjects").padding(.trailing, 80)
                Text("GPA").padding()
                Text("Credit Hours")
            }
            
            if self.activated {
                Spacer().animation(.interactiveSpring(response: 10, dampingFraction: 10, blendDuration: 10))
            }
            
            OperationalButton()
            
        }
        
    }
}

struct Grade_Previews: PreviewProvider {
    static var previews: some View {
        Grade()
    }
}

struct textField: View {
    var placeHolder = "Enter number"
    @Binding var textFieldData: String
    var body: some View {
        TextField("\(self.placeHolder)", text: $textFieldData)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.leading, 80)
            .padding(.trailing, 80)
    }
}
