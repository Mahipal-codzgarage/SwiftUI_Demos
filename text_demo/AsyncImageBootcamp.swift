//
//  AsyncImageBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct AsyncImageBootcamp: View {

    let imageURL = URL(string: "https://picsum.photos/500")

    var body: some View {
        VStack {

            // load image
            AsyncImage(url: imageURL)

            // load image with placeholder
            AsyncImage(url: imageURL) { returnedImage in
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)

            } placeholder: {
                ProgressView()
            }

            // load image with placeholder and image status
            AsyncImage(url: imageURL) { phase in
                switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let getImage):
                         getImage
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(20)
                    case .failure:
                        Image(systemName: "questionmark")
                    default:
                        Image(systemName: "questionmark")
                }
            }
        }
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
