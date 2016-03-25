//
//  CardsViewController.swift
//  Week9
//
//  Created by Sukhrobjon Golibboev on 3/24/16.
//  Copyright © 2016 Sukhrobjon Golibboev. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet var panGestureRecognizer: UIPanGestureRecognizer!
    
    var initialValue: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        profileImage.image = UIImage(named: "ryan")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPanGesture(sender: UIPanGestureRecognizer) {
        
        let point = sender.locationInView(self.view)
        var initial = profileImage.center
        if sender.state == UIGestureRecognizerState.Began{
            
            
            initial = profileImage.center
            
        }else if sender.state == UIGestureRecognizerState.Changed{
            UIView.animateWithDuration(1, animations: { () -> Void in
                self.profileImage.center = CGPoint(x:point.x , y: initial.y)
            })
        }else{
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
