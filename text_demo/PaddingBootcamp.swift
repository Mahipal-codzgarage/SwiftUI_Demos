//
//  PaddingBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello world")
                .background(Color.yellow)
                .padding(.all, 10)
                .padding(.leading, 20 )
                .background(Color.blue)


            Text("Hello world")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.red)
                .padding(.leading, 20)

            VStack(alignment: .leading) {
                Text("Hello world")
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                Text("Hello world fasdkfj lksdjfasdjfeialksdf kldjsflkajsroiaflakdsjf lkajsdfioaewlkadsjflka sjdfiaosefjklasdjf lkajdfkl end...")
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: Color.gray, radius: 5)

            )
        }
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
