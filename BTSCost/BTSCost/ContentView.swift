//
//  ContentView.swift
//  BTSCost
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var start: String=""
    @State var end: String=""
    @State var showResult: Bool=false
    var body: some View {
        Spacer()
        VStack {
            Text("How to Go")
                .font(.title)
                .fontWeight(.bold)
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100,height: 100)
//            Spacer()
        }
//        Spacer()
        ZStack {
            RoundedRectangle(cornerRadius: 20.0)
                .fill(.gray)
                .opacity(0.3)
                .aspectRatio(contentMode: .fit)
            VStack {
                Text("สถานีเริ่มต้น")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("ถานีเริ่มต้น", text: $start)
                    .textFieldStyle(.roundedBorder)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                Text("สถานที่ปลายทาง")
                    .font(.title)
                    .fontWeight(.bold)
                TextField("สถานที่ปลายทาง", text: $end)
                    .textFieldStyle(.roundedBorder)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                Button("Submit",action:{showResult.toggle()} )
                    .padding([.top],40)
            }.sheet(isPresented: $showResult, content: {Result(start: $start, end: $end)})
            
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
