//
//  secondView.swift
//  states
//
//  Created by user190175 on 5/18/21.
//

import SwiftUI

struct secondView: View {
    @Binding var state:String

    var body: some View {
        Text(state)
        TextField("fasdf", text: $state)
    }
}

struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView(state: .constant("lol"))
    }
}
