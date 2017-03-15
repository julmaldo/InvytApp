//
//  ViewController.swift
//  InvytApp
//
//  Created by Julio Maldonado on 3/13/17.
//  Copyright © 2017 Invyt. All rights reserved.
//

import UIKit
import FBSDKLoginKit


class ViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupFBButton()
    }
    
    fileprivate func setupFBButton() {
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        
        //auto
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        //left
        let leftConstriant = NSLayoutConstraint(item: loginButton, attribute: .leftMargin, relatedBy: .equal, toItem: view, attribute: .leftMargin, multiplier: 1.0, constant: 0)
        //right
        let rightConstriant = NSLayoutConstraint(item: loginButton, attribute: .rightMargin, relatedBy: .equal, toItem: view, attribute: .rightMargin, multiplier: 1.0, constant: 0)
        //top
        let bottomConstriant = NSLayoutConstraint(item: loginButton, attribute: .bottom, relatedBy: .equal, toItem: bottomLayoutGuide, attribute: .bottom, multiplier: 1.0, constant:  -50)
        //add constriants
        view.addConstraints([leftConstriant, rightConstriant,bottomConstriant])
        
        loginButton.delegate = self
        loginButton.readPermissions = ["email", "public_profile"]
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil{
            print(error)
            return
        }
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
    }
    
}



