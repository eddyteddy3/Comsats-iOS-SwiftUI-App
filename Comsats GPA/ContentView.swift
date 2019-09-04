//
//  ContentView.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 25/08/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .scaleEffect(0.40)
                    .background(Color.white)
                    .shadow(color: Color.black, radius: 20, x: 0, y: 10)
                Image("comsats")
                    .scaleEffect(0.35)
            }
            .cornerRadius(0)
            .scaleEffect(0.7)
            .frame(height: UIScreen.main.bounds.height/3.5)
            
            //Spacer()
            
            NavigationView {
                VStack {
                    OperationalButton()
                    OperationalButton()
                    OperationalButton()
                    OperationalButton()
                }
                
            }
            .padding(.bottom)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct OperationalButton: View {
    var body: some View {
        Button(action: {
            print("Button Tapped")
        }) {
            Text("Button 1")
                .foregroundColor(.white)
                .frame(width: 250, height: 50)
                .background(Color("color2"))
                .cornerRadius(40)
                .shadow(radius: 20)
                .padding(10)
        }
    }
}
