//
//  SwiftyFileManager.swift
//  swf-AVKit-AVPlayerViewController
//
//  Created by S.Emoto on 2018/06/10.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import Foundation

final class SwiftyFileManager {
    
    private static let manager = FileManager()
    
    // MARK: - Documentディレクトリのパス
    var documentDirectory: String {
        
        return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    }
    
}

extension SwiftyFileManager {
    
    func existFile(atPath path:String) -> Bool {
        
        return SwiftyFileManager.manager.fileExists(atPath: path)
    }
}
