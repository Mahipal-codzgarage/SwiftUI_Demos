//
//  SystemIconsBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct SystemIconsBootcamp: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
            //                .aspectRatio(contentMode: .fit)
                .scaledToFit()
            //                .font(.largeTitle)
                .foregroundColor(Color.purple)
                .frame(width: 300, height: 300)
                .clipped()

            //multi color icon
            Image(systemName: "person.crop.rectangle.badge.plus")
                .renderingMode(.original) // use for multicolor icon
                .resizable()
            //                .aspectRatio(contentMode: .fit)
                .scaledToFit()
            //                .font(.largeTitle)
                .foregroundColor(Color.purple)
                .frame(width: 300, height: 300)
                .clipped()

        }
    }
}
    struct SystemIconsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            SystemIconsBootcamp()
        }
    }
