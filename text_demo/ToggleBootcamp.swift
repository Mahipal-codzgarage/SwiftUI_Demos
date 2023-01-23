//
//  ToggleBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 20/01/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var isSwitch = false
    var body: some View {
        VStack {
            Toggle(isOn: $isSwitch) {
                Text("isOn: \(isSwitch.description)")
            }
            .toggleStyle(SwitchToggleStyle(tint: .black))
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
