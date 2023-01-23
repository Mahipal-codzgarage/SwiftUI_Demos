//
//  Vstack&Hstack&ZstackBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct Vstack_Hstack_ZstackBootcamp: View {
    var body: some View {
        VStack {

            /*
            VStack(alignment: .leading, spacing: 0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)

                Rectangle()
                    .fill(Color.green)
                    .frame(width: 125, height: 125)

                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }

            HStack(alignment: .bottom, spacing: 0) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)

                Rectangle()
                    .fill(Color.green)
                    .frame(width: 125, height: 125)

                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }

            ZStack(alignment:.topLeading) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)

                Rectangle()
                    .fill(Color.green)
                    .frame(width: 125, height: 125)

                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            }
            */

//            ZStack(alignment: .top) {
//                Rectangle()
//                    .fill(.yellow)
//                    .frame(width: 350, height: 500, alignment: .center)
//
//                VStack {
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 150, height: 150, alignment: .center)
//
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 100, height: 100, alignment: .center)
//
//                    HStack {
//                        Rectangle()
//                            .fill(.purple)
//                        .frame(width: 50, height: 50, alignment: .center)
//
//                        Rectangle()
//                            .fill(.pink)
//                            .frame(width: 70, height: 70)
//
//                        Rectangle()
//                            .fill(.blue)
//                            .frame(width: 25, height: 25)
//                    }
//                    .background(Color.white)
//                }
//                .background(Color.black)
//            }
 
            VStack(alignment: .center, spacing: 20) {

                Text("5")
                    .font(.largeTitle)

                Text("Items in your cart:")
                    .font(.body)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct Vstack_Hstack_ZstackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Vstack_Hstack_ZstackBootcamp()
    }
}
