//
//  GridBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct GridBootcamp: View {

    // 1
    let columnFirst: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(50), spacing: nil, alignment: nil),
    ]

    // 2
    let columnSecond: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]

    // 3
    let columnThird: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
    ]

    // 4
    let columnFourth: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]

    var body: some View {
        VStack {

            //            // 1
            //            LazyVGrid(columns: columnFirst) {
            //                ForEach(0 ..< 50) { item in
            //                    Rectangle()
            //                        .fill(Color.red)
            //                        .frame(width: 50, height: 50)
            //
            //                }
            //            }

            //            // 2
            //            LazyVGrid(columns: columnSecond) {
            //                ForEach(0 ..< 50) { item in
            //                    Rectangle()
            //                        .fill(Color.blue)
            //                        .frame(width: 50, height: 50)
            //
            //                }
            //            }

            //            // 3
            //            LazyVGrid(columns: columnThird) {
            //                ForEach(0 ..< 50) { item in
            //                    Rectangle()
            //                        .fill(Color.blue)
            //                        .frame(width: 50, height: 50)
            //
            //                }
            //            }

            // 4
            //            ScrollView {
            //                Rectangle()
            //                    .fill(Color.white)
            //                    .frame(height: 400)
            //
            //                LazyVGrid(columns: columnFourth) {
            //                    ForEach(0 ..< 50) { item in
            //                        Rectangle()
            //                            .fill(Color.blue)
            //                            .frame(height: 150)
            //
            //                    }
            //                }
            //            }

            // 5
            ScrollView {
                LazyVGrid(columns: columnFourth,
                          alignment: .center,
                          spacing: 10,
                          pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0 ..< 20) { item in
                            Rectangle()
                                .fill(Color.blue)
                                .frame(height: 150)

                        }
                    } header: {
                        Text("Section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .padding()
                    }

                    Section {
                        ForEach(0 ..< 20) { item in
                            Rectangle()
                                .fill(Color.red)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.red)
                            .padding()
                    }
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
