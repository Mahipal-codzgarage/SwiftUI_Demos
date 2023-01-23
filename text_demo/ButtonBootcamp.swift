//
//  ButtonBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct ButtonBootcamp: View {

    @State var buttonTitle = ""

    var body: some View {
        VStack(spacing: 20) {

            Text(buttonTitle)

            Button("Click") {
                print("button click!")
                buttonTitle = "Button #1"
            }

            Button {
                buttonTitle = "Button #2"
            } label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }

            Button {
                buttonTitle = "Button #3"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    }
            }

            Button {
                buttonTitle = "Button #4"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
