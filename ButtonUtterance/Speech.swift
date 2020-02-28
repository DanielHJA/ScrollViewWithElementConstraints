//
//  Speech.swift
//  ButtonUtterance
//
//  Created by Daniel Hjärtström on 2020-02-27.
//  Copyright © 2020 Daniel Hjärtström. All rights reserved.
//

import UIKit
import AVFoundation

class Speech {
    static let shared = Speech()

    let speechSynthesizer = AVSpeechSynthesizer()
           
    func speak(_ string: String) {
       
        if speechSynthesizer.isSpeaking {
             speechSynthesizer.stopSpeaking(at: .immediate)
         }
        
        let speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: string)
        speechUtterance.rate = AVSpeechUtteranceMaximumSpeechRate / 4.0
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        speechSynthesizer.speak(speechUtterance)
    }
}
