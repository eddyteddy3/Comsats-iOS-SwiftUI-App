//
//  Campus.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 26/09/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct Campus: View {
    @State var campusName = "Campus"
    var body: some View {
        VStack {
            Text("Hello")
        }
    }
}

struct Campus_Previews: PreviewProvider {
    static var previews: some View {
        Campus()
    }
}

struct CampusView: View {
    var campusName = "Campus"
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .scaleEffect(1.3)
                .padding()
                .foregroundColor(.white)
            Text("\(campusName)")
                .foregroundColor(.white)
                .minimumScaleFactor(0.3)
            
        }
        .frame(width: 120, height: 150)
        .background(Color("color2"))
        .cornerRadius(25)
        .shadow(radius: 20)
    }
}
