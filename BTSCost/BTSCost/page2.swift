//
//  page2.swift
//  BTSCost
//
//  Created by admin on 6/22/24.
//

import SwiftUI
let BackgroundGradient = LinearGradient(
    colors: [Color.white, Color.gray],startPoint: .top, endPoint: .bottom
)
struct page2: View {
    @Binding var start:Int
    @Binding var end:Int
    @State var times:String = "60"
    @State var startlocat:String = "แพรกษา"
    @State var endlocat:String = "สยาม"
    @State private var showDetails = false
    @State var station:[[Int]] = [
        [0,17,25,28,32,35,40,43,45,47,47],[17,0,17,25,28,32,35,40,45,47,47],
        [25,17,0,17,25,28,32,35,40,43,45],[28,25,17,0,17,25,28,32,35,40,45],
        [32,28,25,17,0,17,25,28,32,35,40],[35,32,28,25,17,0,17,25,28,32,35],
        [35,32,28,25,17,0,17,25,28,32,35],[40,35,32,28,25,17,0,17,25,28,32],
        [43,35,32,28,25,17,0,17,25,28,35],[45,43,40,35,32,28,25,17,0,17,25],
        [47,45,43,40,35,32,28,25,17,0,17],[47,47,45,43,40,35,32,28,25,17,0],
    ]
    var body: some View {
        ZStack{
            BackgroundGradient
                .ignoresSafeArea()
            VStack{
                VStack{
                    Image("BTS locat")
                        .resizable()
                        .frame(width: 380, height: 380)
                        .padding()
                }
                Spacer()
                VStack{
                    ZStack{
                        Color.primary
                            .frame(width: 350,height: 200)
                            .cornerRadius(20)
                        HStack{
                            Text("ผลลัพท์")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .padding([.top],-90)
                        }
                        Spacer()
                        HStack{
                            VStack{
                                Text("ระยะเวลา: \(times) นาที")
                                    .foregroundStyle(.white)
                                    .font(.system(size:20))
                                Text("จาก: \(startlocat)")
                                    .foregroundStyle(.white)
                                    .font(.system(size:20))
                                Text("ไป: \(endlocat)")
                                    .foregroundStyle(.white)
                                    .font(.system(size:20))
                            }
                            .padding()
                            ZStack(alignment: .bottom){
                                Color.white
                                    .frame(width: 100,height: 100)
                                    .cornerRadius(20)
                                Spacer()
                                Text("\(station[start][end])")  // here
                                    .font(.system(size: 40))
                                    .padding([.bottom],25)
                                Text("ยอดเงินทั้งหมด")
                                    .font(.system(size: 12))
                                    .padding([.top],-20)
                            }
                        }
                    }
                }
                Spacer()
                ZStack{
                    Color.primary
                        .frame(width: 350,height: 120)
                        .cornerRadius(20)
                    HStack{
                        Text("คำอธืบาย")
                            .foregroundStyle(.white)
                            .padding([.top],-40)
                            .padding()
                            .padding([.leading],20)
                        Spacer()
                    }
                    .padding()
                    Color.white
                        .frame(width: 320,height: 60)
                        .cornerRadius(10)
                        .padding([.top],40)
                        .padding([.top],20)
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}
#Preview {
    page2(start: .constant(50), end: .constant(10))
}
