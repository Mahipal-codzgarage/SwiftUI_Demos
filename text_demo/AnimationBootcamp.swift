//
//  AnimationBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct AnimationBootcamp: View {

    @State var isAnimatedFirst: Bool = false
    @State var isAnimatedSecond: Bool = false

    var body: some View {
        VStack {

            // 1
//            Button("Button") {
//                withAnimation(Animation.easeInOut.repeatCount(5, autoreverses:  true)) {
//                    isAnimatedFirst.toggle()
//                }
//            }
//            Spacer()
//            RoundedRectangle(cornerRadius: isAnimatedFirst ? 50 : 25)
//                .fill(isAnimatedFirst ? Color.red : Color.green)
//                .frame(width: isAnimatedFirst ? 100 : 300, height: isAnimatedFirst ? 100 : 300)
//                .rotationEffect(Angle(degrees: isAnimatedFirst ? 360 : 0))
//                .offset(y: isAnimatedFirst ? 300 : 0)
//            Spacer()

            //2

            Button("Button") {
                isAnimatedSecond.toggle()
//                withAnimation(Animation.easeInOut.repeatCount(5, autoreverses:  true)) {
//
//                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimatedSecond ? 50 : 25)
                .fill(isAnimatedSecond ? Color.red : Color.green)
                .frame(width: isAnimatedSecond ? 100 : 300, height: isAnimatedSecond ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimatedSecond ? 360 : 0))
                .offset(y: isAnimatedSecond ? 300 : 0)
                .animation(Animation.default.repeatCount(5,autoreverses: true), value: isAnimatedSecond)
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
