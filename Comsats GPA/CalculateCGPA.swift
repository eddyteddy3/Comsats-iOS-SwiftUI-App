//
//  CalculateGPA.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 03/11/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct CalculateCGPA: View {
    @State private var prevCGPA = ""
    @State private var currentSGPA = ""
    @State private var prevCC = ""
    @State private var currentCC = ""
    @State private var isShowing = false
    
    var body: some View {
        VStack {
            Spacer()
            HStack{
                Text("Previous CGPA")
                    .bold()
                    
                Spacer()
                Text("Credit Hours")
                    .bold()
            }.padding(.trailing).padding(.leading)
            
            HStack{
                TextField("0.0", text: $prevCGPA)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                Spacer()
                TextField("0", text: $prevCC)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }.padding(.leading,10).padding(.trailing,10).padding(.bottom, 50)
            
            HStack{
                Text("Current SGPA")
                    .bold()
                    
                Spacer()
                Text("Credit Hours")
                    .bold()
            }.padding(.trailing).padding(.leading)
            
            HStack{
                TextField("0.0", text: $currentSGPA)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                Spacer()
                TextField("0", text: $currentCC)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
            }.padding(.leading,10).padding(.trailing,10)
            
            Spacer()
            
            Button(action: {
                //
            }) {
                Text("Calculate")
                    .customButtonDesign()
            }
        }
        
        
    }
    
    func readText(text: String) {
        
    }
}

struct CalculateGPA_Previews: PreviewProvider {
    static var previews: some View {
        CalculateCGPA()
    }
}
