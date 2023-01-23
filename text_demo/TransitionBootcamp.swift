//
//  TransitionBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct TransitionBootcamp: View {

    @State var showView: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }

            if showView {

                //                Text("Hello world")
                //                    .frame(width: .infinity, height: 50)
                //                    .background(Color.red)
                //                    .transition(.move(edge: .bottom))
                //                    .animation(.default)
 
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                //                .opacity(showView ? 1.0 : 0.0)
                //                    .transition(.slide)
                    //.transition(.move(edge: .bottom)) // 1
                    .transition(.asymmetric(insertion: .move(edge: .bottom),
                                            removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.default)
                // option for scale & opacity
                //                    .transition(AnyTransition.scale.animation(.easeInOut))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
