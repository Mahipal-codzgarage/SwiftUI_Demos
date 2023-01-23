//
//  ImagesBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        VStack {
            Image("1")
//                .resizable()
//                .scaledToFit()
                .clipShape(
                    Circle()
                        .stroke(lineWidth: 20)
                )
                .frame(width: 300, height: 300)

            Image("2")
                .foregroundColor(.red)
        }
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
