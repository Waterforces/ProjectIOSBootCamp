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
                                Text("\(start)")
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
                    Text("dsfohnsodihniosnhisdfhsdhsdhdsjh")
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
