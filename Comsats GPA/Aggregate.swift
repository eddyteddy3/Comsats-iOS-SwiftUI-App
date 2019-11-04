//
//  Aggregate.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 26/09/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct Aggregate: View {
    @State private var ntsScore = ""
    @State private var interPercentage = ""
    @State private var metricPercentage = ""
    var body: some View {
        VStack {
            Text("Comsats Aggregate System")
                .fontWeight(.heavy)
                .font(.title)
                .padding()
            Spacer()
            
            VStack {
                Text("NTS Score")
                    .padding(.bottom, 10)
                TextField("0", text: $ntsScore)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                    .shadow(radius: 9)
            }.padding(.bottom, 50)
            
            VStack {
                Text("Intermediate marks percentage")
                    .padding(.bottom, 15)
                    
                TextField("0", text: $interPercentage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                    .shadow(radius: 9)
            }.padding(.bottom, 50)
            
            VStack {
                Text("Metric marks percentage")
                    .padding(.bottom, 10)
                TextField("0", text: $metricPercentage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150)
                    .shadow(radius: 9)
            }
            
            Spacer()
            
            Button(action: {
                //
            }) {
                Text("Calculate Aggregate")
                    .customButtonDesign()
            }
        }
    }
}

struct Aggregate_Previews: PreviewProvider {
    static var previews: some View {
        Aggregate()
    }
}
