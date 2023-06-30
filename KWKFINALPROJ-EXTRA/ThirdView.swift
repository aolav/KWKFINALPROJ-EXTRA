//
//  ThirdView.swift
//  KWKFINALPROJ-EXTRA
//
//  Created by Andrea Olavarrieta on 6/30/23.
//

import SwiftUI

struct ThirdView: View {
    @State private var result3 = ""
    var body: some View {
        NavigationStack {
            VStack{
                Text("\nGet a makeup style based on your features\n\n\n")
                    .font(.system(size: 33, weight: .bold, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                    .padding(.top, 30)
                Button("Sharp features") {
                    result3 = "90s makeup 💿"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:35))
                Button("Round features") {
                    result3 = "Cottagecore 🌻"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:35))
                Button("Small features") {
                    result3 = "Douyin makeup 🧚‍♂️"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:35))
                
                Text("\(result3) \n\n\n\n")
                    .font(.system(size:50))
            }
        }
    }
}
struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
