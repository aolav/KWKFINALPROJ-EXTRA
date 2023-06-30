//
//  GalleryView.swift
//  KWKFINALPROJ-EXTRA
//
//  Created by Andrea Olavarrieta on 6/30/23.
//

import SwiftUI

func buttonPressed() {
    print("button pressed")
}
struct GalleryView: View {
//    @State private var celeb1 = ""
    var spacing: CGFloat = 4
    var columns: CGFloat = 3
    
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                ScrollView(showsIndicators: false) {
                    HStack(spacing: spacing){
                        
                        Button (action:{
                            buttonPressed()
                            print("she wears makeup")
                        }) {
                            Image("olivia")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / columns)
                        }
                        Button (action:{
                            buttonPressed()
                        }) {
                            Image("lilnasx")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / columns)
                        }
                        Button (action:{
                            buttonPressed()
                        }) {
                            Image("jenna")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / columns)
                        }
                    }
                    HStack(spacing: spacing){
                        Button (action:{
                        }) {
                            Image("lizzo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / columns)
                        }
                        Button (action:{
                            buttonPressed()
                        }) {
                            Image("alexa")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / columns)
                        }
                        Button (action:{
                            buttonPressed()
                        }) {
                            Image("jennie")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / columns)
                        }
                    }
                }
            }
            }
        }
    }
    
    
    struct GalleryView_Previews: PreviewProvider {
        static var previews: some View {
            GalleryView()
        }
    }
