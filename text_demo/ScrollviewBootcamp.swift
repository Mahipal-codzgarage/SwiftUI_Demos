//
//  ScrollviewBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct ScrollviewBootcamp: View {
    var body: some View {
        VStack {
            // 1st
//            ScrollView(.horizontal) {
//                HStack {
//                    ForEach(0 ..< 5) { item in
//                        Rectangle()
//                            .fill(Color.purple)
//                            .frame(width: 300, height: 300)
//                            .overlay {
//                                Text("\(item)")
//                            }
//                    }
//                }
//            }

            // 2nd
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { index in
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<5) { item in
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 5)
                                    .padding()
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct ScrollviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollviewBootcamp()
    }
}
