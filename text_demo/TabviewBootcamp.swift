//
//  TabviewBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct TabviewBootcamp: View {

    @State var selectedTab: Int = 0

    var body: some View {
        //        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
        //            Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1")/*@END_MENU_TOKEN@*/ }.tag(1)
        //            Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/ }.tag(2)
        //        }

        TabView(selection: $selectedTab) {

            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                }
                .tag(0)

            Text("Browse")
                .tabItem {
                    Text("Browse")
                    Image(systemName: "globe")
                }
                .tag(1)

            Text("Profile")
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.fill")
                }
                .tag(2)
        }
        .tint(.red)
    }
}

struct TabviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabviewBootcamp()
    }
}

struct HomeView: View {

    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea(edges: .top)

            VStack {
                Text("Home")

                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .padding()
            }
        }
    }
}
