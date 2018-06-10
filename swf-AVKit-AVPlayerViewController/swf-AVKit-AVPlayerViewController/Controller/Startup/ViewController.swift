//
//  ViewController.swift
//  swf-AVKit-AVPlayerViewController
//
//  Created by S.Emoto on 2018/06/10.
//  Copyright © 2018年 S.Emoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let moviePlayer = MoviePlayerViewController()

    @IBOutlet weak var noMovieLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        noMovieLabel.isHidden = true
    }    
}

extension ViewController {
    
    @IBAction func didTapPlay(_ sender: Any) {
        
        guard let movieVC = moviePlayer.createMoviePlayerFromBundle(withName: "test1") else {
            noMovieLabel.isHidden = false
            return
        }
        
        self.present(movieVC, animated: true, completion: {
            movieVC.player?.play()
        })
    }
}
