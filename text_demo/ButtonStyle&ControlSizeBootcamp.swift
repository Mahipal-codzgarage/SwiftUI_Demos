//
//  ButtonStyle&ControlSizeBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 30/01/23.
//

import SwiftUI

struct ButtonStyle_ControlSizeBootcamp: View {
    var body: some View {
        VStack(spacing: 10) {

            Button("borderedProminent") {

            }
            .frame(height: 55)

            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)    // button style
            .controlSize(.large)                // control size
            .buttonBorderShape(.capsule)        // border shape
            .padding(10)

            Button("automatic") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.automatic)

            Button("bordered") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)

            Button("plain") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)

            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)

            Button("borderless") {

            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStyle_ControlSizeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle_ControlSizeBootcamp()
    }
}
