//
//  StateBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct StateBootcamp: View {

    @State var backgroundColor: Color = Color.green

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(edges: .all)

            VStack(spacing: 20) {

                Text("Title")
                    .font(.title)

                Text("Count: 1")
                    .font(.headline)
                    .underline()

                HStack(spacing: 20) {

                    Button("Button 1") {
                        backgroundColor = Color.purple
                    }

                    Button("Button 2") {
                        backgroundColor = Color.blue
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
