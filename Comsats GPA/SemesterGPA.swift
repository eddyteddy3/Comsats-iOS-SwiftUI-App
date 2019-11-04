//
//  SemesterGPA.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 03/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct SemesterGPA: View {
    @State private var text = ""
    @State private var spacing = 0
    @State private var isShowing = false
    @State var numberOfSections = 0
    
    @State private var gpa1 = ""
    
    var body: some View {
        VStack{
            
            if !isShowing {
                Text("Enter no. of subjects")
                    .font(.title)
                    .padding(.top)
                    .foregroundColor(.gray)
                
                TextField("0", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 250, height: 50)
                    .shadow(radius: 8)
                
                Button(action: {
                    withAnimation {
                        self.isShowing = true
                        self.readText(text: self.text)
                    }
                }) {
                    Text("Enter")
                        .customButtonDesign().padding(.bottom, 30)
                }
            }
            
            if isShowing {
                VStack {
                    HStack {
                        Text("Subjects")
                        Spacer()
                        Text("GPA")
                        Text("Credit Hours")
                    }.padding()
                    
                    VStack {
                        ForEach(0..<numberOfSections) { num in
                            HStack {
                                Text("Subject \(num+1)")
                                Spacer()
                                TextField("0.0", text: self.$gpa1)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                TextField("0.0", text: self.$gpa1)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                            }.padding(.leading).padding(.trailing)
                        }
                    }
                }
                
                Spacer()
                
                Button(action: {
                    //
                }) {
                    Text("Calculate")
                        .customButtonDesign()
                }
            }
        }
    }
    
    func readText(text: String) {
        if let num = Int(text), num <= 7{
            self.numberOfSections = num
        } else {
            self.isShowing = false
        }
    }
}
struct SemesterGPA_Previews: PreviewProvider {
    static var previews: some View {
        SemesterGPA()
    }
}
