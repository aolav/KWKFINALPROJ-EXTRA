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
                    
                        Text("The Vision & Team")
                        .font(.title3)
                        .foregroundColor(.white)
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
    let gradient = Gradient(colors: [Color("ColorPurple"), Color("White")])
    var body: some View {
        let gradient = Gradient(colors: [Color("ColorPink"),
                 Color("ColorPink"), Color("white")])
    
        VStack {
            HStack {
                Spacer()
                VStack {

                    Text("Celebrity Palette")
                            .font(.system(size: 44, weight: .bold, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.top, 100)

                        Text("Get an insider on a popular celebrity's makeup")
                        .font(.title3)
                        .foregroundColor(.black)
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

struct QuizView: View {
    let gradient = Gradient(colors: [Color("ColorPurple"),
             Color("ColorPink"), Color("white")])
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Spacer()
            }
            Spacer()
        }
        .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.opacity(0.1)
            }
            .navigationTitle("Quiz")
        }
    }



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
