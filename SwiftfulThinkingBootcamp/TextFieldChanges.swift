//
//  TextFieldChanges.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Akhilesh Rathor on 6/26/26.
//

import SwiftUI

struct TextFieldChanges: View {
    @State var name:String = String()
    
    var body: some View {
        TextField("username", text: $name)

    }
}

#Preview {
    TextFieldChanges()
}
