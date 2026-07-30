//
//  BackgroundAndOverlaysBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 02/02/25.
//

import SwiftUI

struct BackgroundAndOverlaysBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(
//                Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
            )
            .background(
//                Color.red
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
            )
       /* Circle()
            .fill(Color.pink)
            .frame(width: 100,height: 100, alignment: .center)
            .overlay {
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .background(
            Circle()
                .fill(Color.purple)
                .frame(width: 110, height: 110, alignment: .center)
            )
        */
        
        
        
    }
}

#Preview {
    BackgroundAndOverlaysBootcamp()
}
