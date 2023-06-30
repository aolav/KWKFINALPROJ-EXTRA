//
//  ProfileView.swift
//  KWKFINALPROJ-EXTRA
//
//  Created by Andrea Olavarrieta on 6/30/23.
//

import SwiftUI

struct ProfileView: View {
    let gradient = Gradient(colors: [Color("ColorPurple"),
             Color("ColorPink"), Color("white")])
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Profile View")
                Spacer()
            }
            Spacer()
        }
        .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
