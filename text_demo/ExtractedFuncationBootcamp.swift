//
//  ExtractedFuncationBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct ExtractedFuncationBootcamp: View {

    @State var backgroundColor: Color = Color.pink

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            contentLayer
        }
    }

    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("Press ME")
                    .font(.headline) 
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }

    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFuncationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFuncationBootcamp()
    }
}
