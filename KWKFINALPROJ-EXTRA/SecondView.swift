//
//  SecondView.swift
//  KWKFINALPROJ-EXTRA
//
//  Created by Andrea Olavarrieta on 6/30/23.
//

import SwiftUI

struct SecondView: View {
    @State private var result2 = ""
    var body: some View {
        NavigationStack {
            VStack{
                Text("\nGet a skincare brand based on your skin type\n\n\n")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                    .padding(.top, 30)
                    Spacer()
                Spacer()
                Button("Dry") {
                    result2 = "Cerave 💧"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:40))
                
                Button("Sensitive") {
                    result2 = "LaRochePosay ☀️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:40))
                
                Button("Oily") {
                    result2 = "Elf 🧝‍♀️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:40))
                
                Text("\(result2) \n\n\n\n")
                    .font(.system(size:50))
                
            NavigationLink(destination:ThirdView())
                { Text("Next Page 💅")
                    .padding()
                    .fontWeight(.bold)
                    .font(.title2)
                    .foregroundColor(Color("ColorBarb"))
            }
        }
    }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
