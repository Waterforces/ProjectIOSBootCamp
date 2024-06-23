//
//  ContentView.swift
//  BTSCost
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var money: Int = 0
    @State var station: Int = 0
    var body: some View {
        Spacer()
        VStack {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100,height: 100)
//            Spacer()
        }
//        Spacer()
        ZStack {
            RoundedRectangle(cornerRadius: 50.0)
                .fill(.gray)
                .opacity(0.3)
                .aspectRatio(contentMode: .fit)
            VStack {
                Text("จำนวนเงิน")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("จำนวนเงิน", value: $money, formatter: NumberFormatter())
                    .textFieldStyle(.roundedBorder)
                    .aspectRatio(contentMode: .fit)
                Text("สถานที่")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("สถานที่", value: $station, formatter: NumberFormatter())
                    .textFieldStyle(.roundedBorder)
                    .aspectRatio(contentMode: .fit)
                Button("Submit",action:{ })
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
