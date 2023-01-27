//
//  IntroView.swift
//  text_demo
//
//  Created by Mahipal on 27/01/23.
//

import SwiftUI

struct IntroView: View {

    @AppStorage("signed_in") var currentUserSingedIn = false

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .top,
                           endPoint: .bottom)
                            .ignoresSafeArea()

            // if user is signed in  -> profile view : onboarding view

            if currentUserSingedIn {
                // login screen
                
            } else {
                // onboarding screen

            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
