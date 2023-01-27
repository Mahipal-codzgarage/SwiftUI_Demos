//
//  OnAppear&OnDisappearBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct OnAppear_OnDisappearBootcamp: View {

    @State var myText = "Start text."
    @State var setCount = 0

    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    Text(myText)
                    LazyVStack {
                        ForEach(0 ..< 500) { item in
                            RoundedRectangle(cornerRadius: 25)
                                .frame(height: 200)
                                .padding()
                                .onAppear {
                                    setCount += 1
                                }
                                .onDisappear {
                                    //setCount -= 1
                                }
                        }
                    }
                }
                .onAppear(perform: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                        //myText = "this is new text"
                    })
                })
                .onDisappear(perform: {
                   // myText = "ending text"
                })
            .navigationTitle("On Appear \(setCount)")
            }
        }
    }
}

struct OnAppear_OnDisappearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppear_OnDisappearBootcamp()
    }
}
