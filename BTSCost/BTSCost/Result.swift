//
//  Result.swift
//  BTSCost
//
//  Created by Admin on 22/6/2567 BE.
//

import SwiftUI

struct Result: View {
    @Binding var start: String
    @Binding var end: String
    @State var station: [String]=[
    
    ]
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Text("ผลลัพธ์")
    }
}

#Preview {
    Result(start: .constant(""), end: .constant(""))
}
