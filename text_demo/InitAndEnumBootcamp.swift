//
//  InitAndEnumBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct InitAndEnumBootcamp: View {

    let backgroundColor: Color
    let count: Int
    let title: String

    init(backgroundColor: Color, count: Int, title: String) {
        self.backgroundColor = backgroundColor
        self.count = count
        self.title = title
    }

    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
                .padding(.bottom, 10)

            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(15)
    }
}

struct InitAndEnumBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitAndEnumBootcamp(backgroundColor: .purple, count: 5, title: "Apples")
    }
}
