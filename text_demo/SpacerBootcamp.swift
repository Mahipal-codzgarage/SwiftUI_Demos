//
//  SpacerBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 18/01/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: nil) {
                Rectangle()
                    .frame(width: 100, height: 100)

                Spacer()
                    .frame(height: 10)
                    .background(Color.orange )

                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
            }
            .padding(.vertical, 10)

            HStack(spacing: nil) {

                Spacer()
                    .frame(height: 10)
                    .background(Color.orange )

                Rectangle()
                    .frame(width: 50, height: 50)

                Spacer()
                    .frame(height: 10)
                    .background(Color.orange )

                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)

                Spacer()
                    .frame(height: 10)
                    .background(Color.orange )

                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)

                Spacer()
                    .frame(height: 10)
                    .background(Color.orange )
            }
            .padding()

            VStack {
                HStack {
                    Image(systemName: "xmark")
                    Spacer()
                    Image(systemName: "gear")
                }
                .font(.title)
                .background(Color.yellow)
                .padding(.horizontal)
                .background(Color.blue)
                
                Spacer()
            }

        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
