//
//  ColorpickerBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct ColorpickerBootcamp: View {
    @State var setBackgroundColor = Color.white
    var body: some View {
        ZStack {
            setBackgroundColor
                .ignoresSafeArea()

            VStack {
                ColorPicker("Select color", selection: $setBackgroundColor, supportsOpacity: true)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(50)
            }
        }
    }
}

struct ColorpickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorpickerBootcamp()
    }
}
