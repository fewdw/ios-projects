//
//  MusicPlayer.swift
//  MusicPlayerLab
//
//  Created by macuser on 2022-09-27.
//

import Foundation
import AVFoundation
class MusicPlayer: ObservableObject{
    
    var player:AVAudioPlayer?
    var stopped:Bool
    
    init(){
        stopped = false
    }
    
    func playSound(fileName: String) {
        stopped = false
        let soundUrl = Bundle.main.url(forResource: fileName, withExtension: "mp3")
        
        do{
            player = try AVAudioPlayer(contentsOf: soundUrl!)
        }catch{
            print(error)
        }
        self.player?.play()
        
    }
    func play(){
        print("resuming")
        if(stopped == false){
            self.player?.play()
        }
    }
    
    func pause(){
        print("pausing song")
        if(stopped==false){
            self.player?.pause()
        }
    }
    
    func stop(){
        print("stopping song")
        
        self.player?.stop()
        stopped = true
    }
    
    
    
}
