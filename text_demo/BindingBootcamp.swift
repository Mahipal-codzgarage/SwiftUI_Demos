//
//  BindingBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct BindingBootcamp: View {

    @State var backgroundColor: Color = Color.green

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            ButtonView(bgcolor: $backgroundColor)
        }
    }
}

struct ButtonView: View {

    @Binding var bgcolor: Color

    var body: some View {
        Button {
            bgcolor = Color.orange
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
