//
//  ViewController.swift
//  w3l2
//
//  Created by 申潤五 on 2019/7/20.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0.0
    var timer:Timer!
    var speed = 2.0
    @IBOutlet var segment: UISegmentedControl!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.center = self.view.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        view.addSubview(newView)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (t) in
            self.rotateView(targateView: newView)
        })
    }
    func rotateView(targateView:UIView){
        let angle =  counter * Double.pi / 180
        targateView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        counter += speed
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        speed = Double(sender.value)
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
    }
    
}

