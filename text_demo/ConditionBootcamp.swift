//
//  ConditionBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 19/01/23.
//

import SwiftUI

struct ConditionBootcamp: View {

    @State var showCircle: Bool = true

    var body: some View {
        VStack {

            Button("Circle Button") {
                showCircle.toggle()
            }

            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }

            Spacer()
        }
    }
}

struct ConditionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionBootcamp()
    }
}
