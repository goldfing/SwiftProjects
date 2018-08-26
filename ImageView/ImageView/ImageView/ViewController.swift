//
//  ViewController.swift
//  ImageView
//
//  Created by HanJun LEE on 2018. 7. 7..
//  Copyright © 2018년 HanJun LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHight:CGFloat
        
        if(isZoom) {
            newWidth = imgView.frame.width / scale
            newHight = imgView.frame.height / scale
            imgView.frame.size = CGSize(width: newWidth, height: newHight)
            btnResize.setTitle("확대", for: .normal)
        } else {
            newWidth = imgView.frame.width * scale
            newHight = imgView.frame.height * scale
            imgView.frame.size = CGSize(width: newHight, height: newHight)
            btnResize.setTitle("축소", for: .normal)
        }
        
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    
}

