//
//  Shapes.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack(spacing: 10) {
            Circle()
            //            .fill(Color.blue)
            //            .foregroundColor(Color.red)
            //            .stroke(Color.red, lineWidth: 12)
            //            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt,dash: [10]))
                .trim(from: 0, to: 0.7)
                .stroke(Color.orange,lineWidth: 5)

            Ellipse()
                .stroke()
                .frame(width: 200, height: 100)

            Capsule(style: .continuous)

            Rectangle()

            RoundedRectangle(cornerRadius: 20)
                .stroke()
        }
        .padding()
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
