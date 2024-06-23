//
//  ContentView.swift
//  BTSCost
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.white, Color.gray],
    startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    @State var start: Int = 0
    @State var end: Int = 10
    @State var showResult: Bool=false
    var body: some View {
        ZStack {
//            Color.yellow
//                .ignoresSafeArea(edges: .all)
//                .opacity(0.5)
            backgroundGradient
                .ignoresSafeArea()
            Spacer()
            VStack {
                VStack {
                    Text("How To Go")
                        .font(.title)
                        .fontWeight(.bold)
                    Image("Image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 20.0)
                        .fill(.yellow)
                        .opacity(0.6)
                        .aspectRatio(contentMode: .fit)
                    VStack {
                        Text("สถานีเริ่มต้น")
                            .font(.title)
                            .fontWeight(.bold)
                        TextField("ถานีเริ่มต้น", value: $start, formatter: NumberFormatter())
                            .textFieldStyle(.roundedBorder)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                        Text("สถานที่ปลายทาง")
                            .font(.title)
                            .fontWeight(.bold)
                        TextField("สถานที่ปลายทาง", value: $end, formatter: NumberFormatter())
                            .textFieldStyle(.roundedBorder)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200)
                        Button("Submit",action:{showResult.toggle()} )
                            .padding([.top],40)
                    }.sheet(isPresented: $showResult, content: {page2(start: $start, end: $end)})
                    
                }
            }
                    
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
