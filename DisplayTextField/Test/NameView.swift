//
//  NameView.swift
//  Test
//
//  Created by Frederic Lefebvre on 2022-10-21.
//

import SwiftUI

struct NameView: View {

    @EnvironmentObject var username: Username
    
    var body: some View {
        Text("Your name is: \(username.name)")
            .foregroundColor(.red)
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
