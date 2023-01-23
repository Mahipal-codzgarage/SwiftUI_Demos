//
//  ExtractSubviewBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()

            HStack {
                MyView(title: "Apple", count: 11, color: .blue)
                MyView(title: "Orange", count: 3, color: .green)
            }
        }
    }
}

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}

struct MyView: View {

    let title: String
    let count: Int
    let color: Color

    var body: some View {
        VStack {
            Text("\(count)")

            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
