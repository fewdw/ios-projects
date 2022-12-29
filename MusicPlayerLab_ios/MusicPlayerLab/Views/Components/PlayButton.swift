//
//  PlayButton.swift
//  MusicPlayerLab
//
//  Created by macuser on 2022-09-20.
//

import SwiftUI
import AVKit

struct PlayButton: View {
    
    @EnvironmentObject var musicplayer:MusicPlayer


    var body: some View {
        
        Button(action: {

            musicplayer.play()
            
        },label: {
            Image(systemName: "play.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
        })
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
