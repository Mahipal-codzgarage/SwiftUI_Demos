//
//  AnimationTimingBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {

    @State var isAnimating: Bool = false

    let timing = 5.0

    var body: some View {
        VStack {

            Button("Button") {
                isAnimating.toggle()
            }

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.default, value: isAnimating)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.spring(response: 0.5,
                                            dampingFraction: 0.5,
                                            blendDuration: 1.0), value: isAnimating)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.linear(duration: timing), value: isAnimating)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.easeIn(duration: timing), value: isAnimating)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.easeInOut(duration: timing), value: isAnimating)

            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 , height: 100)
                .animation(Animation.easeOut(duration: timing), value: isAnimating)
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
