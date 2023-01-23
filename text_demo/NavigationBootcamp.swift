//
//  NavigationBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {

                NavigationLink("hello") {
                    MyOtherScreen()
                }

                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("Home")
            //            .navigationBarTitleDisplayMode(.inline)
            //            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },

                trailing: NavigationLink(destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                        .foregroundColor(.red)
                }))
        }
    }
}

struct MyOtherScreen: View {

    @Environment(\.dismiss) var dismissed

    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green screen")
                .navigationBarHidden(true)

            VStack {
                Button("Back") {
                    dismissed()
                }
                NavigationLink("Click here", destination: Text("3rd Screen"))
            }
        }
    }
}

struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
