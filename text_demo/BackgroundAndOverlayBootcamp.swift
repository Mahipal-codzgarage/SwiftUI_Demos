//
//  BackgroundAndOverlayBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        VStack(spacing: 80) {
            Text("Hello, World!")
                .frame(width: 100, height: 100)
            //                .background(
            //                    Circle()
            //                        .stroke()
            //                )
                .background(
                    //Text("hii")
                    LinearGradient(colors: [Color.red,Color.blue], startPoint: .top, endPoint: .bottom)
                )
                .clipShape(Circle())
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(.purple)
                )


            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .background(
                    Circle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.blue)
                )


            Rectangle()
                .frame(width: 100, height: 100)
                .overlay (
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .bottomTrailing)
                .background(
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 150, height: 150)
                    , alignment: .bottomTrailing)


            Image(systemName: "heart.fill")
                .foregroundColor(.white)
                .font(.system(size: 40))
                .background(
                    Circle()  
                        .fill(
                            LinearGradient(colors: [Color.purple, Color.pink],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100, alignment: .center)
                        .shadow(color: .blue, radius: 10)
                        .overlay(alignment: .topTrailing, content: {
                            Circle()
                                .fill(Color.green)
                                .frame(width: 30, height: 30)
                                .overlay(
                                    Text("1")
                                        .font(.body)
                                )
                        })
                )
        }
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
