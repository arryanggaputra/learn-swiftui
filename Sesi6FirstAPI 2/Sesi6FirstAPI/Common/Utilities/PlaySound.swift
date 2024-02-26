//
//  PlaySound.swift
//  Sesi6FirstAPI
//
//  Created by Hidayat Abisena on 28/01/24.
//

import UIKit
import AVFoundation

func playSound(soundName: String) {
    guard let soundFile = NSDataAsset(name: soundName) else {
        print("😡 Could not read file named \(soundName)")
        return
    }
    
    do {
        audioPlayer = try AVAudioPlayer(data: soundFile.data)
        audioPlayer?.play()
    } catch {
        print("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
    }
}
