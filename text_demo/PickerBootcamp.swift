//
//  PickerBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 23/01/23.
//

import SwiftUI

struct PickerBootcamp: View {

    @State var selection = "20"
    let filterOption : [String] = ["Most Recent", "Most Popular", "Most Liked"]


    init() {

//        let setAttributes: [NSAttributedString.Key: Any] = [
//            .foregroundColor : Color.white,
//        ]
//        UISegmentedControl.appearance().setTitleTextAttributes(setAttributes, for: .selected)
//        UISegmentedControl.appearance().selectedSegmentTintColor = .darkGray

    }

    var body: some View {
        VStack {

            //            HStack {
            //                Text("age: ")
            //                Text(selection)
            //            }
            //
            //            Picker(selection: $selection, label: Text("Picker")) {
            //                ForEach(18 ..< 25) { item in
            //                    Text("\(item)").tag("\(item)")
            //                        .font(.headline)
            //                        .foregroundColor(.red)
            //                        .tag("\(item)")
            //                }
            //            }
            ////            .background(Color.gray.opacity(0.3))
            //            .pickerStyle(.wheel)

            // 2
            Picker(selection: .constant(1), label: HStack {
                Text("Picker")
                Text(selection)
            }
                .font(.headline)
                .foregroundColor(.green)
                .padding()
                .padding(.horizontal)
                .background(Color.pink)
                .cornerRadius(10)
                .shadow(color: .black, radius: 10)
            ) {
                ForEach(18 ..< 25) { item in
                    Text("\(item)").tag("\(item)")
                    //                        .font(.headline)
                    //                        .foregroundColor(.red)
                    //                        .tag("\(item)")
                }
            }
            .pickerStyle(.automatic)

            // 3
            Picker(selection: .constant(1)) {
                ForEach(filterOption.indices) { index in
                    Text("\(filterOption[index])").tag("\(filterOption[index])")
                        .font(.headline)
                        .foregroundColor(.red)
                        .tag("\(filterOption[index])")
                }
            } label: {
                HStack {
                    Text("Picker")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.green)
                .padding()
                .padding(.horizontal)
                .background(Color.pink)
                .cornerRadius(10)
                .shadow(color: .black, radius: 10)
            }
            .pickerStyle(.segmented)
        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
