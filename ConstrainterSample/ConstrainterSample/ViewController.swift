//
//  ViewController.swift
//  ConstrainterSample
//
//  Created by Arash on 5/16/20.
//  Copyright © 2020 aarashgoodari. All rights reserved.
//


import Constrainter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let backView = UIView()
        let blueButton = UIButton()
        let greenButton = UIButton()
       
        
        //adding views
        view.addSubview(backView)
        backView.addSubview(blueButton)
        backView.addSubview(greenButton)
        
        backView.backgroundColor = .red
        blueButton.backgroundColor = .blue
        greenButton.backgroundColor = .green
        
        //setting backView
        backView.beginConstraints()
        .edges()
        .endConstraints()
        
        
        //setting greenButton at center of backView(its superview)
        greenButton.beginConstraints()
        .center()
        .height(100)
        .width(100)
        .endConstraints()
        
        //setting rightButton at left side of greenButton
        let referencedConst = NSLayoutConstraint()//set what you want and keep its reference
        blueButton.beginConstraints()
            .right(10, to: .left, of: greenButton)
            .height(100)
            .width(100)
            .centerVertically()
            .customConstraint(referencedConst)
            .endConstraints()
    }


}

