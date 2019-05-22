//
//  LoginViewController.swift
//  Student Partner
//
//  Created by Viroj Fernando on 5/22/19.
//  Copyright © 2019 Heaven'sCode. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var blurBackgroundView: UIView!
    @IBOutlet weak var blurBackgroundInner: UIVisualEffectView!
    @IBOutlet weak var blurBackground: UIVisualEffectView!
    
    
    @IBOutlet weak var createAccountView: UIVisualEffectView!
    
    @IBOutlet weak var logInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.logInButton.layer.cornerRadius = self.logInButton.frame.height / 4
        
        self.blurBackground.alpha = 0
        self.blurBackgroundView.alpha = 0
        self.blurBackgroundInner.alpha = 0
        
        self.createAccountView.alpha = 0
        
        self.blurBackground.layer.cornerRadius = self.blurBackground.frame.height / 10
        
        self.createAccountView.layer.cornerRadius = self.createAccountView.frame.height / 8
        
        self.animateControls()
        
    }
    
    @IBAction func logInClicked(_ sender: Any) {
    }
    
    func animateControls (  )  {
        UIView.animate(withDuration: 0.2, delay: 1, options: .curveLinear, animations: {
            
            self.blurBackground.alpha = 1
            self.blurBackgroundView.alpha = 1
            self.blurBackgroundInner.alpha = 1
            
            self.createAccountView.alpha = 1
            
        })
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
