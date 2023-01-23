//
//  GredientBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct GredientBootcamp: View {
    var body: some View {
        VStack {

            // linear gradient
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //                Color.red
                    LinearGradient(colors: [Color(.red), Color(.red).opacity(0.3)],
                                   startPoint: .top,
                                   endPoint: .bottom )
                )
                .frame(width: 300, height: 200)

            // radio greadinet
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //                Color.red
                    RadialGradient(colors: [Color(.red), Color(.blue)],
                                   center: .center,
                                   startRadius: 10,
                                   endRadius: 70)
                )
                .frame(width: 300, height: 200)

            // angular greadinet
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //                Color.red
                    AngularGradient(colors: [Color(.red), Color(.blue)],
                                    center: .topLeading,
                                    angle: .degrees(180 + 45)
//                                    startAngle: .degrees(0),
//                                    endAngle: .degrees(90)
                                   )
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct GredientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GredientBootcamp()
    }
}
