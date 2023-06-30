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
@State private var text = ""

    var spacing: CGFloat = 4
    var columns: CGFloat = 3
    
    var body: some View {
        NavigationStack {
            ZStack {
//                Image("lilnasx")
                VStack {
                    GeometryReader { geo in
                        ScrollView(showsIndicators: false) {
                            HStack(spacing: spacing){
                                
                                Button (action:{
                                    buttonPressed()
                                    text = "Olivia Rodrigo brings back classy with this simple but elegant red carpet look. Her almond eyes are accessorized with glittery silver-green-toned eyeshadow and sharp-winged eyeliner. A pale foundation contrasts her earthy bronzer and blush combination. Rodrigo's brows are filled in lightly with a brown pencil.  For a defined lip, she outlines her lips with a maroon lip liner and tops it off with a sheer gloss."
                                }) {
                                    Image("olivia")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / columns)
                                }
                                Button (action:{
                                    buttonPressed()
                                    text = "Lil Nas X often rocks glitter eyeliner and shadow to channel his inner supernova. This look can be achieved with a liquid glitter eyeshadow of your choice, which can be applied with a precise eyeliner brush. Add gold or silver eyeshadow to your inner corner for an extra pop!"
                                }) {
                                    Image("lilnasx")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / columns)
                                }
                                Button (action:{
                                    buttonPressed()
                                    text = "Jenna Ortega's makeup style is ideal for those wishing to add a smoky touch to their look. Her lids blend black eyeshadow in her outer corners with a metallic eyeshadow covering the rest. Her waterline is lined with black pencil eyeliner and brown eyeshadow under her eyes to create a shadow effect. Her cheeks similarly feature a strong orange-brown contour using cream bronzer and contour. On her lips, a natural suede lip shade."
                                }) {
                                    Image("jenna")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / columns)
                                }
                            }
                            
                            
                            HStack(spacing: spacing){
                                Button (action:{
                                    buttonPressed()
                                    text = "Lizzo's makeup represents the transition between spring to summer. Lizzo's peachy eyeshadow covers her entire contour and is blended into her high cheekbones to create a lifted and airbrushed blush feel. To contrast the shadow, Lizzo rocks manga-style false lashes on her upper and lower lashlines. Her nose is subtly highlighted with a silver highlighter, while her lip is lined with natural-toned lipstick and lip liner."
                                }) {
                                    Image("lizzo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / columns)
                                }
                                Button (action:{
                                    buttonPressed()
                                    text = "Alexa Demie brings out her round eyes with bold all-around eyeliner using the Pat McGrath Eyeliner. Keeping the focus on her eyes, her face makeup relies on Lancôme Star Bronzer and NARS’s Radiate Creamy Concealer to accentuate her natural skin vibrance. To finish the look, Demie sports a nude cream lip. This summer matte is out, glowy and fierce is in!"

                                }) {
                                    Image("alexa")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / columns)
                                }
                                Button (action:{
                                    buttonPressed()
                                    text = "Jennie Kim's look is perfect for those who want to achieve a subtle and natural hint of color in their look. Her brows are lightly shaded with a warm brown pencil. Her cheeks include a mix of warm and cool-toned cream blush shades, as well as some orange-toned bronzer. All of this is complemented by a coral pink lip tint."
                                }) {
                                    Image("jennie")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / columns)
                                }
                            }
                            Text(text)
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
