//
//  ViewController.swift
//  ConstrainterSample
//
//  Created by Arash on 5/16/20.
//  Copyright © 2020 aarashgoodari. All rights reserved.
//

import UIKit
import Constrainter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let backView = UIView()
        let leftButton = UIButton()
        let centerButton = UIButton()
       
        
        //adding views
        view.addSubview(backView)
        backView.addSubview(leftButton)
        backView.addSubview(centerButton)
        
        backView.backgroundColor = .red
        leftButton.backgroundColor = .blue
        centerButton.backgroundColor = .green
        
        //setting backView
        backView.beginConstraints()
        .edges()
        .endConstraints()
        
        
        //setting centerButton at center of backView(its superview)
        centerButton.beginConstraints()
        .center()
        .height(100)
        .width(100)
        .endConstraints()
        
        //setting rightButton at left side of centerButton
        leftButton.beginConstraints()
            .right(10, to: .left, of: centerButton)
            .height(100)
            .width(100)
            .centerVertically()
            .endConstraints()
    }


}

