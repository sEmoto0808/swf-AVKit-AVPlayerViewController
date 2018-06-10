//
//  MoviePlayerViewController.swift
//  swf-AVKit-AVPlayerViewController
//
//  Created by S.Emoto on 2018/06/10.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

// AVPlayerViewControllerを使用するために必要
import AVFoundation
import AVKit

class MoviePlayerViewController: AVPlayerViewController {
    
    private let fileManger = SwiftyFileManager()
}

extension MoviePlayerViewController: AVPlayerViewControllerDelegate {}

extension MoviePlayerViewController {
    
    // MARK: - Play Movie
    // プロジェクト「Resource」フォルダ内の動画ファイルを再生する
    func createMoviePlayerFromBundle(withName name:String) -> AVPlayerViewController? {
        
        if self.player != nil {
            self.player = nil
        }
        
        if let bundlePath:String = Bundle.main.path(forResource: name, ofType: "mp4") {
            
            let videoPlayer = AVPlayer(url: URL(fileURLWithPath: bundlePath))
            self.player = videoPlayer
        } else {
            print("no such file ...")
            return nil
        }
        
        return self
    }
    
    // アプリ内のDocumentディレクトリにある動画ファイルを再生する
    func createMoviePlayerFromLocalFile(withName name:String) -> AVPlayerViewController? {
        
        if self.player != nil {
            self.player = nil
        }
        
        let filePath = fileManger.documentDirectory + "/\(name).mp4"
        
        if fileManger.existFile(atPath: filePath) {
            
            let videoPlayer = AVPlayer(url: URL(fileURLWithPath: filePath))
            self.player = videoPlayer
        } else {
            print("no such file ...")
            return nil
        }
        
        return self
    }
}
