//
//  PagingTabviewBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct PagingTabviewBootcamp: View {

    @State var selelctedTab: Int = 0

    let icons:[String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill",
    ]

    var body: some View {
        TabView {

            ForEach(icons, id: \.self) { item in
                Image(systemName: item)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.pink)
                    .padding(50)
                    .tag(item)
            }

//            RoundedRectangle(cornerRadius: 25)
//                .padding()
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25)
//                .padding()
//                .foregroundColor(.yellow)
//            RoundedRectangle(cornerRadius: 25)
//                .padding()
//                .foregroundColor(.cyan)
        }
        .background(
            RadialGradient(colors: [Color.blue, Color.yellow], center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
    }
}

struct PagingTabviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PagingTabviewBootcamp()
    }
}
