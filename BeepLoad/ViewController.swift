//
//  ViewController.swift
//  BeepLoad
//
//  Created by --=_t0tep_=-- on 23/07/2016.
//  Copyright © 2016 --=_t0tep_=--. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewController: UIView!
    @IBOutlet weak var btnReload: UIButton!
    @IBOutlet weak var btnTransfer: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        viewController.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)
        let blurEffect = UIBlurEffect(style: .Light)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = viewController.frame
        viewController.addSubview(blurView)
        
        
//        btnReload.frame = CGRectMake(0, 0, btnReload.frame.size.width, btnReload.frame.size.height)
//        blurView.frame = btnReload.frame
//        btnReload.addSubview(blurView)
//        
//        btnTransfer.frame = CGRectMake(0, 0, btnTransfer.frame.size.width, btnTransfer.frame.size.height)
//        blurView.frame = btnTransfer.frame
//        btnTransfer.addSubview(blurView)
        
        
    }


}

