//
//  ContentView.swift
//  KWKFINALPROJ-EXTRA
//
//  Created by Andrea Olavarrieta on 6/29/23.
//

import SwiftUI

struct HomeView: View {
    let gradient = Gradient(colors: [Color("ColorPurple"), Color("ColorBlue"), Color("ColorPeri")])
    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack {
                    Image("bloomelogo")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width: 250, height: 250)
                            .background(Color.white)
                            .clipShape(Circle())
                            .clipped()
                            .padding(.top, 95)
                            .padding(.bottom, 10)
                    
                    Text("Welcome, to your personal beauty guide")
                            .font(.system(size: 50, weight: .bold, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    
                        Text("Explore below to begin")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.purple)
                        .padding(.top, 2)
                }
                Spacer()
            }
            Spacer()

        }
        .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct AboutView: View {
    let gradient = Gradient(colors: [Color("ColorBlue"), Color("ColorPurple"), Color("White")])
    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack {
                    Image("bloomelogo")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(width: 100, height: 100)
                            .background(Color.white)
                            .clipShape(Circle())
                            .clipped()
                            .padding(.top, 60)
                            .padding(.bottom, 10)
                    
                    Text("Inside Bloome")
                            .font(.system(size: 50, weight: .bold, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    
                        Text("Goals")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 2)
                        
                    Text("We want to make beauty and makeup less intimidating for beginners, and instead make it a fun and immersive journey. We intend for our users to find their style and be comfortable in their own skin.")
                        .padding()
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                    .foregroundColor(.purple)
                    .padding(.top, -20)
                    .padding(.bottom, 20)
                    
                    
                    Text("Vision")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 2)
                    
                    
                    Text("We attempt to condense makeup trends and sources to serve as a singular beauty mentor. We are constantly looking into building features that cater to each user's unique needs.")
                        .padding()
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                    .foregroundColor(.purple)
                    .padding(.top, -20)
                    .padding(.top, 2)
                    
                }
                Spacer()
            }
            Spacer()
        }
        .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct CelebView: View {
    let gradient = Gradient(colors: [Color("ColorPink"),
                                     Color("ColorPink"), Color("ColorPurple")])
    var body: some View {
        ZStack {
            VStack {
                HStack {
                   // Spacer()
                    VStack {
            
                        Text("Celebrity Palette")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.top, 100)
                        
                        Text("Get insider details on trending celebrity makeup")
                            .font(.title2)
                        .fontWeight(.regular)
                        .padding()
                        .foregroundColor(Color.black)
                            .foregroundColor(.black)
                        //Spacer()
                    }
                    Spacer()
                }
                GalleryView()
                    //.padding()
            }
            .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
        }
    }
}
    
struct QuizView: View {
    @State private var result1 = ""
    let gradient = Gradient(colors: [Color("ColorPurple"),
                                     Color("ColorPink"), Color("white")])
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
              //  HStack {
                   // Spacer()
                    Text("\n\nGet a makeup brand based on your desired look\n\n\n")
                    .padding()
                    .font(.system(size: 24.4, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .fontWeight(.bold)
                    .foregroundColor(.purple)
                    .padding(.top, 30)
                    Spacer()
                Spacer()
                    Button("Natural") {
                        result1 = "Glossier 💄"
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.accentColor)
                    .font(.system(size:40))
                Button("Glam") {
                    result1 = "Pat McGrath 💋"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:40))

                Button("Edgy") {
                    result1 = "Colourpop 👩‍🎤"
                }
                .buttonStyle(.borderedProminent)
                .tint(.accentColor)
                .font(.system(size:40))
                
                Text("\(result1) \n\n\n\n")
                .font(.system(size:50))
                NavigationLink(destination:SecondView()) {Text("Next Page 👉")
                        .padding()
                        .fontWeight(.bold)
                        .font(.title2)
                        .foregroundColor(Color("ColorBarb"))
                }
                    Spacer()
                }
//            .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
//            .edgesIgnoringSafeArea(.all)
            }

        }
    }
//}

//       var body: some View {
//        NavigationView {
//            ZStack {
//                Color.blue.opacity(0.1)
//            }
//            .navigationTitle("Quiz")
//        }
//    }
    
    
    
    struct ContentView: View {
        var body: some View {
            //        VStack  {
            //            Image("bloomelogo")
            //                .resizable(capInsets: EdgeInsets(top: 0.0, leading: -1.0, bottom: 0.0, trailing: 0.0))
            //                .aspectRatio(contentMode: .fit)
            //                .frame(width: 250, height: 190)
            //                .padding()
            //            Text("A new blooming of self")
            //                .font(.title3)
            //                .fontWeight(.medium)
            //                .foregroundColor(Color("AccentColor"))
            //                    }
            TabView {
                
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                            .foregroundColor(Color("AccentColor"))
                    }
                AboutView()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("About")
                            .foregroundColor(Color("AccentColor"))
                    }
                CelebView()
                    .tabItem {
                        Image(systemName: "mouth.fill")
                        Text("Celeb Palette")
                            .foregroundColor(Color("AccentColor"))
                    }
                QuizView()
                    .tabItem {
                        Image(systemName: "crown.fill")
                        Text("Quiz")
                            .foregroundColor(Color("AccentColor"))
                    }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
