//
//  ContextMenuBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {

    @State var setBackgroundColor = Color.purple

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Hello world")
                .font(.headline)
            Text("demo text")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(setBackgroundColor.cornerRadius(30))
        .contextMenu {
            Button {
                setBackgroundColor = .red
            } label: {
                Label("first", systemImage: "1.circle")
            }

            Button {
                setBackgroundColor = .green
            } label: {
                Label("second", systemImage: "2.circle")
            }

            Button {
                setBackgroundColor = .cyan
            } label: {
                Label("third", systemImage: "3.circle")
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
