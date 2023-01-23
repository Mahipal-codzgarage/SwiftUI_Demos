//
//  SliderBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct SliderBootcamp: View {

    @State var sliderValue: CGFloat = 5
    var body: some View {
        VStack {

            HStack {
                Text("Rating:")
                                Text("\(sliderValue)")
//                Text(String(format: "%.0f", sliderValue))
            }
            // default
            Slider(value: $sliderValue)
                .tint(.red)

            // starting and ending range
            Slider(value: $sliderValue, in: 1...100)

            // step
            Slider(value: $sliderValue, in: 1...5, step: 0.5)


            Slider(value: $sliderValue, in: 1...5, step: 0.5) {
                Text("hello")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { (_) in

            }
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
