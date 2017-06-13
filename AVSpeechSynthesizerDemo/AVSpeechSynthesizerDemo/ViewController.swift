//
//  ViewController.swift
//  AVSpeechSynthesizerDemo
//
//  Created by SoulJa on 2017/6/13.
//  Copyright © 2017年 sdp. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let speechSynthesizer:AVSpeechSynthesizer = AVSpeechSynthesizer();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //MARK: 点击播放按钮
    @IBAction func onClickPlayBtn(_ sender: Any) {
        if speechSynthesizer.isSpeaking {
            return
        } else {
            let utterance:AVSpeechUtterance = AVSpeechUtterance.init(attributedString: NSAttributedString.init(string: "我是共产主义接班人"))
            //语音类型
            let voiceType:AVSpeechSynthesisVoice = AVSpeechSynthesisVoice.init(language: "zh-CN")!
            
            utterance.voice = voiceType
            
            //设置语速
            utterance.rate = 0.2
            //设置音量
            utterance.volume = 0.5
            
            speechSynthesizer.speak(utterance)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

