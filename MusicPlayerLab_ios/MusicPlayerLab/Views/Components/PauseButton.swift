//
//  PauseButton.swift
//  MusicPlayerLab
//
//  Created by macuser on 2022-09-20.
//

import SwiftUI
import AVKit

struct PauseButton: View {
    
    @EnvironmentObject var musicplayer:MusicPlayer

    
    var body: some View {
        
        Button(action: {
            
            musicplayer.pause()
            
        }, label:{
            Image(systemName: "pause.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
        })
    }
}

struct PauseButton_Previews: PreviewProvider {
    static var previews: some View {
        PauseButton()
    }
}
