//
//  Aggregate.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 26/09/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct Aggregate: View {
    @State var ntsScore = ""
    var body: some View {
        VStack {
            Text("NTS Score")
            textField(placeHolder: "Enter NTS Score", textFieldData: $ntsScore)
        }
    }
}

struct Aggregate_Previews: PreviewProvider {
    static var previews: some View {
        Aggregate()
    }
}
