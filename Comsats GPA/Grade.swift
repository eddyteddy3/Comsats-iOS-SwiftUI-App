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
            Text("Hello")
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
