//
//  BackgroundMaterialBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    let imageURL = URL(string: "https://picsum.photos/1000")

    var body: some View {
        VStack {
            Spacer()

            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 5)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(
                .ultraThinMaterial
            )
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
           AsyncImage(url: imageURL)
        )
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
