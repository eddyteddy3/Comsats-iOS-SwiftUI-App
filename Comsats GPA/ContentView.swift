//
//  ContentView.swift
//  Comsats GPA
//
//  Created by Moazzam Tahir on 25/08/2019.
//  Copyright © 2019 Moazzam Tahir. All rights reserved.
//

import SwiftUI

struct customButtonView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(Color("color2"))
            .cornerRadius(40)
            .shadow(radius: 20, y: 10)
            //.padding(30)
    }
}

//defining the extension of the view
extension View {
    func customButtonDesign() -> some View {
        self.modifier(customButtonView())
    }
}

struct ContentView: View {
    @State private var isNavigated1 = false
    @State private var isNavigated2 = false
    @State private var isNavigated3 = false
    @State private var isNavigated4 = false
    var body: some View {
        
        NavigationView {
            VStack {
                Circle()
                    .frame(width: 150, height: 150)
                    .overlay(Circle().fill(Color(.white)).frame(width: 160, height: 160))
                    .overlay(Image.init("comsats").resizable())
                    .shadow(radius: 10, y: 10)
                    .offset(CGSize(width: 0, height: -80))
                
                Text("Welcome to Camstatus")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("textColor"))
                    .shadow(radius: 20)
                    .padding(.top)
                    .offset(CGSize(width: 0, height: -50))
                    
                Spacer()
                
                VStack {
                    
                    NavigationLink(destination: SemesterGPA(), isActive: $isNavigated1) {
                        
                        Button(action: {
                            print("1")
                            self.isNavigated1 = true
                        }) {
                            Text("Calculate Semester GPA")
                                .customButtonDesign().padding(30)
                        }
                    }
                    
                    
                    NavigationLink(destination: CalculateCGPA(), isActive: $isNavigated2) {
                        Button(action: {
                            print("2")
                            self.isNavigated2 = true
                        }) {
                            Text("Calculate CGPA")
                            .customButtonDesign().padding(30)
                        }
                    }
                    
                    NavigationLink(destination: Grade(), isActive: $isNavigated3) {
                        Button(action: {
                            print("3")
                            self.isNavigated3 = true
                        }) {
                            Text("Grading System")
                            .customButtonDesign().padding(30)
                        }
                    }
                    
                    NavigationLink(destination: Aggregate(), isActive: $isNavigated4) {
                        Button(action: {
                            print("4")
                            self.isNavigated4 = true
                        }) {
                            Text("Calculate Aggregate")
                            .customButtonDesign().padding(30)
                        }
                    }
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
