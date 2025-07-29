//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 31/03/24.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                //              Color.primary
//                Color(UIColor.init(red: 0.9809022546, green: 0.0281905923, blue: 1, alpha: 1)
//                Color(UIColor.secondarySystemBackground
//                     )
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
