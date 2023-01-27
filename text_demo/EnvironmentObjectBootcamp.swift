//
//  EnvironmentObjectBootcamp.swift
//  text_demo
//
//  Created by Mahipal on 27/01/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {

    @Published var dataArray = [String]()

    init() {
        getData()
    }

    func getData() {
        //        dataArray.append("iPhone")
        //        dataArray.append("iPad")
        //        dataArray.append("Macbook pro")

        dataArray.append(contentsOf: ["iPhone", "iPad", "iMac"])
    }
}

struct EnvironmentObjectBootcamp: View {

    @StateObject var stringData = EnvironmentViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(stringData.dataArray, id: \.self) { getString in
                    NavigationLink {
                        DetailView(selectedItem: getString)
                    } label: {
                        Text(getString)
                            .font(.title3)
                            .foregroundColor(.red)
                    }
                }
            }
            .navigationTitle("Environment Object")
        }
        .environmentObject(stringData)
    }
}

struct DetailView: View {

    let selectedItem: String

    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()

            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View {

    // let selectedItem: String
    @EnvironmentObject var viewModelFinalObj: EnvironmentViewModel

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModelFinalObj.dataArray, id: \.self) { getString in
                        Text(getString)
                            .font(.title3)
                            .foregroundColor(.red)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}


struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
