//
//  ViewController.swift
//  singApp
//
//  Created by ラファエル on 2019/08/05.
//  Copyright © 2019 takahashi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//シンバルの音源ファイルを指定
    let cymbalPath =
        Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    
    //シンバル用のプレイヤーインスタンスを作成
    var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {
        do {
        //シンバルプレイヤーに音源ファイル名を指定
        cymbalPlayer = try AVAudioPlayer(contentsOf:  cymbalPath,fileTypeHint: nil)
        //シンバルの音源再生
        cymbalPlayer.play()
        } catch {
        print("シンバルでエラーが発生しました！")
        }
    }
    //ギターの音源ファイルを指定
    let guitarPath =
        Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    
    //ギター用のプレイヤーインスタンスを作成
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        do {
            //ギタープレイヤーに音源ファイル名を指定
            guitarPlayer = try AVAudioPlayer(contentsOf:  guitarPath,fileTypeHint: nil)
            //ギターの音源再生
            guitarPlayer.play()
        } catch {
            print("ギターでエラーが発生しました！")
        }
    }
    //バックミュージックの音源ファイルを指定
    let backmusicPath =  Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    //バックミュージック用のプレイヤーインスタンスを作成
    var backmusicPlayer = AVAudioPlayer()
    
    //Playボタンがタップされた時の処理
    @IBAction func play(_ sender: Any) {
        do{
            //バックミュージック用のプレイヤーに、音源ファイル名を指定
            backmusicPlayer = try AVAudioPlayer(contentsOf:  backmusicPath,fileTypeHint: nil)
            //リピート再生
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
        }catch{
            print("エラーが発生しました！")
        }
    }
    //Stopボタンがタップされた時の処理
    @IBAction func Stop(_ sender: Any) {
        //バックミュージック停止
        backmusicPlayer.stop()
    }
}

