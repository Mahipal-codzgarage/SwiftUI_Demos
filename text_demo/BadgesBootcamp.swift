//
//  BadgesBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct BadgesBootcamp: View {
    @State var dataArray = ["first", "second", "third", "fourth"]

    
    var body: some View {
        VStack {
            List {
                ForEach(dataArray,id: \.self) { item in
                    Text(item.capitalized)
                        .badge(5)

                }
            }

            TabView {
                Color.red
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("First")
                    }


                Color.green
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Second")
                    }


                Color.blue
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Third")
                    }
                    .badge(10)
            }
        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
