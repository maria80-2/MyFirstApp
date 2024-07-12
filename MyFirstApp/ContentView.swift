//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Eucharistia Maria Peter on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    print("button tapped!")
                }) {
                    Text("About me!")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.pink, lineWidth: 5)
                        )
                }
                NavigationLink(destination: SecondView()) {
                    Text("Go to Second Page")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Image("earthygemini")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
            .navigationTitle("First Page")
            
        }
    }
}


struct SecondView: View {
    var body: some View {
        Text("My hobbies!")
            .font(.largeTitle)
            .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}


#Preview {
    ContentView()
}
