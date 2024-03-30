/*
    SoundEffectsBootcamp.swift
*/

import SwiftUI
import AVKit

class SoundManager {
    static let instance = SoundManager()
    // we just made soundmanager accessable from anywhere
    /* previously we initiolised a class everytime when we needed it, but now we did it within the class wich means that we dont need to reinit the class, which saves space in RAM */

    var player: AVAudioPlayer? 

    enum SounOption: String {
        case tada
        case badum
    }

    func playSound(sound: SounOption) {

        // local url, aka file in your project, downloaded
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else { return }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        } catch let error {
            print("Error playing soun d. \(error)")
        }
    }
}


struct SoundEffectsBootcamp: View {

    var body: some View {
        VStack (spacing: 40)
        {
            Button("Play Sound 1") { SoundManager.instance.playSound(sound: .tada) }
            Button("Play Sound 2") { SoundManager.instance.playSound(sound: .badum) }
        }
    }
}

struct SoundEffectsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundEffectsBootcamp()
    }
}