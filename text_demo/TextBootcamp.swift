//
//  TextBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 17/01/23.
//

import SwiftUI

@available(iOS 16.0, *)
struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! this is multiple line text demo ".uppercased())
        //            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(.blue)
        //            .underline(true, pattern: .dash, color: .red)
        //            .padding()
        //            .font(.system(weight: .semibold, design: .serif))
            .multilineTextAlignment(.leading)
            .baselineOffset(10) // space between two lines
            .kerning(5) // space between two characters
            .frame(width: 300, height: 150, alignment: .trailing)
            .minimumScaleFactor(0.1)

    }
}

@available(iOS 16.0, *)
struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
