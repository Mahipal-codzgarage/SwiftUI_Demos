//
//  DarkmodeBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct DarkmodeBootcamp: View {

    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is Primary")
                        .foregroundColor(.primary)

                    Text("This color is Secondary")
                        .foregroundColor(.secondary)

                    Text("This color is Black")
                        .foregroundColor(.black)

                    Text("This color is White")
                        .foregroundColor(.white)

                    Text("This color is globally adaptive")
                        .foregroundColor(Color("Global"))

                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .pink)
                }
            }
            .navigationTitle("Dark mode")
        }
    }
}

struct DarkmodeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkmodeBootcamp()
                .preferredColorScheme(.light)

            DarkmodeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
