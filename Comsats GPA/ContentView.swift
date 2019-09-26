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
            ComsatsImage()
            HStack{
                Text("How To?")
                Text("How To?")
                //Spacer()
            }
            
            
            //Spacer()
            
            NavigationView {
                VStack {
                    OperationalButton(buttonName: "Calculate Semester GPA")
                    OperationalButton(buttonName: "Calculate GPA")
                    OperationalButton(buttonName: "Grading System")
                    OperationalButton(buttonName: "Aggregate Calculator")
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
    var buttonName = "Button"
    var body: some View {
        Button(action: {
            print("Button Tapped")
        }) {
            Text("\(buttonName)")
                .foregroundColor(.white)
                .frame(width: 250, height: 50)
                .background(Color("color2"))
                .cornerRadius(40)
                .shadow(radius: 20)
                .padding(30)
        }
    }
}

struct ComsatsImage: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .scaleEffect(0.24)
                .background(Color.white)
                .shadow(color: Color.black, radius: 15, x: 0, y: 8)
            Image("comsats")
                .scaleEffect(0.20)
        }
        .scaleEffect(0.8)
        .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height/5)
    }
}
