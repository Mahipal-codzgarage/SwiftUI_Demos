//
//  StepperBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct StepperBootcamp: View {

    @State var stepperValue: Int = 1
    @State var setFrame:CGFloat = 100

    var body: some View {
        VStack {
            // with range
            Stepper(value: $stepperValue, in: 1...10) {
                Text("stepper value: \(stepperValue)")
            }

            RoundedRectangle(cornerRadius: 25)
                .frame(width: setFrame, height: 100)

            // without range
            Stepper("hello: \(stepperValue)", value: $stepperValue)

            // on increment and on decrement
            Stepper("new Stepper") {
                print("increment")
                updateFrame(amount: 50)
            } onDecrement: {
                print("decrement")
                updateFrame(amount: -50)
            } onEditingChanged: { isChange in
                print("is changed \(isChange)")
            }
        }
    }

    func updateFrame(amount: CGFloat) {
        withAnimation(.easeInOut) {
            setFrame += amount
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
