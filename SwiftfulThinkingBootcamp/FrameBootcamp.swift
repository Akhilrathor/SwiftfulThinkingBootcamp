//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 02/02/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .frame(width: 200, height: 100, alignment: .center)
            .background(Color.green)
            .frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
            .background(Color.orange)
            .frame(minWidth: 100, maxWidth: .infinity, minHeight: 10, maxHeight: .infinity)
            .background(Color.yellow)
    }
}

#Preview {
    FrameBootcamp()
}
