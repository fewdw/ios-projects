//
//  ContentView.swift
//  Test
//
//  Created by Frederic Lefebvre on 2022-10-21.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var username: Username
    
    var body: some View {
            VStack{
                TextField("Enter your name", text:$username.name)
                    .frame(width: 300, height: 300)
                NameView()
            }

        

        }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
