//
//  ContentView.swift
//  DogAge
//
//  Created by Jacob Conacher on 10/11/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var input: String = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [CustomColor.lightRaspberry, CustomColor.darkRaspberry]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                Text("How Old Is Your Dog?")
                    .fontWeight(.light)
                    .font(.body)
                    .padding()
                
                TextField("Enter your dog's age", text: $input)
                    .keyboardType(.numbersAndPunctuation)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                Image("dog")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .cornerRadius(10)
                    .frame(width: 200, height: 250)
                
                Button {
                } label: {
                  Text("Human Age")
                        .padding()
                        .foregroundColor(CustomColor.darkRaspberry)
                        .background(Color.white)
                        .cornerRadius(100)
                }
                
                Spacer()
                
            }
        }
    }
}

struct CustomColor{
    static let lightRaspberry = Color("LightRaspberry")
    static let darkRaspberry = Color("DarkRaspberry")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
