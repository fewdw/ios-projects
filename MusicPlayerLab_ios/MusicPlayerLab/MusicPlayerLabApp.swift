//
//  MusicPlayerLabApp.swift
//  MusicPlayerLab
//
//  Created by macuser on 2022-09-20.
//

import SwiftUI
import AudioToolbox

@main
struct MusicPlayerLabApp: App {
    
    @StateObject var musicplayer:MusicPlayer = MusicPlayer()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(musicplayer)
        }
    }
}
