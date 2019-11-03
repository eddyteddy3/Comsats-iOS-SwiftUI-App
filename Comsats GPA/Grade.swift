//
//  Grade.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 05/09/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct Grade: View {
    @State private var marks = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Enter your marks")
            
            TextField("0", text: $marks)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200)
            
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

struct Grade_Previews: PreviewProvider {
    static var previews: some View {
        Grade()
    }
}
