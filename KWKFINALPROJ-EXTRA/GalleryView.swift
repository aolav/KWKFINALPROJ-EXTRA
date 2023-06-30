//
//  GalleryView.swift
//  KWKFINALPROJ-EXTRA
//
//  Created by Andrea Olavarrieta on 6/30/23.
//

import SwiftUI

struct GalleryView: View {
    var spacing: CGFloat = 4
    var columns: CGFloat = 3
    
    var body: some View {
        GeometryReader { geo in
            ScrollView(showsIndicators: false) {
                HStack(spacing: spacing){
                    Image("olivia")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / columns)
                    
                    Image("lilnasx")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / columns)
                    
                    Image("jenna")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / columns)
                }
                HStack(spacing: spacing){
                    Image("lizzo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / columns)
                    
                    Image("alexa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / columns)
                    
                    Image("jennie")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width / columns)
                }
                Spacer()
            }
            GalleryView()
        }
    }
}


struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
