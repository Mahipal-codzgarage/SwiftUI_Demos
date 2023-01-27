//
//  TapGestureBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 24/01/23.
//

import SwiftUI

struct TapGestureBootcamp: View {

    @State var setBackgroundColor = Color.black

    var body: some View {
        VStack(spacing: 25) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(setBackgroundColor)
                .onTapGesture {
                    setBackgroundColor = Color.secondary
                }

            Button {
                setBackgroundColor = Color.cyan
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }

            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2,  perform:  {
                    // react when tap two time 
                    setBackgroundColor = Color.green
                })

            Spacer()
        }
        .padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
