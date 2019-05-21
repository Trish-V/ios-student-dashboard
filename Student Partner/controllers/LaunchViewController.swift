//
//  LaunchViewController.swift
//  Student Partner
//
//  Created by Viroj Fernando on 5/20/19.
//  Copyright © 2019 Heaven'sCode. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {
    
    @IBOutlet weak var pinkView: UIView!
    
    @IBOutlet weak var redView: UIView!
    
    @IBOutlet weak var splashImageView: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.pinkView.frame = CGRect(x: 0, y: 0, width: self.pinkView.frame.width, height: self.pinkView.frame.width + 200.0)
        
        self.redView.frame = CGRect(x: 0, y: 0, width: self.redView.frame.width, height: self.redView.frame.width + 200.0)
        
        self.splashImageView.alpha = 0
        
        self.splashImageView.transform = CGAffineTransform(translationX: 0, y: 180)
        
        self.animateRedView(redView)
        
        self.animatePinkView(pinkView)
        
        self.splashLogo(splashImageView)
        
        self.redView.layer.cornerRadius = self.redView.frame.width / 4
        
        self.pinkView.layer.cornerRadius = self.pinkView.frame.width / 4
        
        // Do any additional setup after loading the view.
    }
    
    func animateRedView(_ view: UIView  ) {
        
        UIView.animateKeyframes(withDuration: 5, delay: 0, options: .calculationModeCubic, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                
                view.transform = CGAffineTransform(translationX: 75, y: -130)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                
                view.transform = CGAffineTransform(translationX: 150, y: -0)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                
                view.transform = CGAffineTransform(translationX: 225, y: 130)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                
                view.transform = CGAffineTransform(translationX: 0, y: 0)
            }
        }
        ){ (success: Bool) in
            
            view.transform = CGAffineTransform.identity
            
            self.animateRedView(view)
            
        }
        
        
        /*      UIView.animate(withDuration: 5, delay: 0, options: .curveLinear, animations: {
         
         image.transform = CGAffineTransform(translationX: 25, y: -25)
         
         image.transform = CGAffineTransform(translationX: 50, y: -50)
         
         }) { (success: Bool) in
         
         image.transform = CGAffineTransform.identity
         
         self.animate(image)
         
         }
         
         */
    }
    
    func animatePinkView(_ view: UIView  ) {
        //        let start = self.pinkView.center
        
        UIView.animateKeyframes(withDuration: 5, delay: 0, options: .calculationModeCubic, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                //                view.transform = CGAffineTransform(scaleX: 2, y: 2)
                
                view.transform = CGAffineTransform(translationX: -75, y: 130)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                //                view.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY)
                
                view.transform = CGAffineTransform(translationX: -150, y: 0)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                //                view.center = CGPoint(x: self.view.bounds.width, y: start.y)
                
                view.transform = CGAffineTransform(translationX: -225, y: -130)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                
                view.transform = CGAffineTransform(translationX: 0, y: 0)
            }
        }
        ){ (success: Bool) in
            
            view.transform = CGAffineTransform.identity
            
            self.animatePinkView(view)
            
        }
        
    }
    
    func splashLogo(_ view : UIImageView){
        
        UIView.animate(withDuration: 1, delay: 0, options: .curveLinear, animations: {
            
            view.transform = CGAffineTransform(translationX: 0, y: -100)
            view.alpha = 1
            
        })
        
        /*  { (success: Bool) in
         
         image.transform = CGAffineTransform.identity
         
         self.splashLogo(image)
         
         }*/
        
        
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
