//
//  Constraint.swift
//  Shahrdad-iOS
//
//  Created by Arash Goodarzi on 2/27/20.
//  Copyright © 2020 Arash Goodarzi. All rights reserved.
//

import UIKit


extension UIView {
    
    //**
    @discardableResult
    func beginConstraints() -> UIView {
        prepareForConstraint(view: nil)
        return self
    }
    
    //*
    func endConstraints(asd: String? = nil) {
        updateConstraints(for: self)
    }
    
    //MARK: - Height and Width
    @discardableResult
    func width(_ width: CGFloat) -> UIView {
        superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: width))
        return self
    }
    
    //**
    @discardableResult
    func height(_ height: CGFloat) -> UIView {
        superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: height))
        return self
    }
    
    
    //Mark: - Constraints
    private func prepareForConstraint(view: UIView?) {
        self.translatesAutoresizingMaskIntoConstraints = false
        view?.translatesAutoresizingMaskIntoConstraints = false
    }
    
    //**
    private func updateConstraints(for view: UIView) {
        view.setNeedsUpdateConstraints()
        view.updateConstraintsIfNeeded()
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }
    
    //**
    func edges() -> UIView {
        return self.top().right().bottom().left()
    }
    
    //**
    @discardableResult
    func top(_ value: CGFloat = 0, to attribute: NSLayoutConstraint.Attribute = .top,  of view: UIView? = nil) -> UIView {
        
        let view: UIView? = view != nil ? view : superview
        self.superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: 1, constant: value))
        return self
    }
    
    //**
    @discardableResult
    func left(_ value: CGFloat = 0, to attribute: NSLayoutConstraint.Attribute = .left,  of view: UIView? = nil) -> UIView {
        
        let view: UIView? = view != nil ? view : superview
        self.superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: 1, constant: value))
        return self
    }
    
    //**
    @discardableResult
    func bottom(_ value: CGFloat = 0, to attribute: NSLayoutConstraint.Attribute = .bottom,  of view: UIView? = nil) -> UIView {
        
        let view: UIView? = view != nil ? view : superview
        self.superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: 1, constant: -value))
        return self
    }
    
    //**
    @discardableResult
    func right(_ value: CGFloat = 0, to attribute: NSLayoutConstraint.Attribute = .right,  of view: UIView? = nil) -> UIView {
        
        let view: UIView? = view != nil ? view : superview
        self.superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .right, relatedBy: .equal, toItem: view, attribute: attribute, multiplier: 1, constant: -value))
        return self
    }
    
    //**
    @discardableResult
    func center(_ offset: CGFloat = 0, of view: UIView? = nil, translatesAutoresizingMaskIntoConstraints: Bool = true) -> UIView {
        centerHorizontally(offset, of: view)
        centerVertically(offset, of: view)
        return self
    }
    
    //**
    @discardableResult
    func centerHorizontally(_ offset: CGFloat = 0, of view: UIView? = nil) -> UIView {
        
        let view: UIView? = view != nil ? view : superview
        self.superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: offset))

        return self
    }
    
    //**
    @discardableResult
    func centerVertically(_ offset: CGFloat = 0, of view: UIView? = nil) -> UIView{
        
        let view: UIView? = view != nil ? view : superview
        self.superview?.addConstraint(NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: offset))
        return self
    }
    
    //**
    @discardableResult
    func customConstraint(_ constraint: NSLayoutConstraint) -> UIView {
        self.superview?.addConstraint(constraint)
        return self
    }
    
}
