//
//  StopButton.swift
//  MusicPlayerLab
//
//  Created by macuser on 2022-09-20.
//

import SwiftUI
import AVKit

struct StopButton: View {
    
    @EnvironmentObject var musicplayer:MusicPlayer

    
    var body: some View {
        Button(action: {
            
            musicplayer.stop()
            
        }, label:{
            Image(systemName: "stop.circle.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
        })
    }
}

struct StopButton_Previews: PreviewProvider {
    static var previews: some View {
        StopButton()
    }
}
