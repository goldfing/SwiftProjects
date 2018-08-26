//
//  ViewController.swift
//  EX-ImageViewer
//
//  Created by HanJun LEE on 2018. 7. 7..
//  Copyright © 2018년 HanJun LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnImgPrev: UIButton!
    @IBOutlet var btnImgNext: UIButton!
    @IBOutlet var lblImgName: UILabel!
    
    var imgPosition:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgPosition = 1;
        setImageView(pos: imgPosition!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }

    @IBAction func imgPrev(_ sender: UIButton) {
        if imgPosition == 1 {
            return
        }
        
        imgPosition = imgPosition! - 1
        setImageView(pos: imgPosition!)
    }
    
    @IBAction func imgNext(_ sender: UIButton) {
        if imgPosition == 6 {
            return
        }
        
        imgPosition = imgPosition! + 1
        setImageView(pos: imgPosition!)
    }
    
    func setImageView(pos:Int) {
        let imgFilename = String.init(format: "0%d.png", pos)
        lblImgName.text = imgFilename
        
        imgView.image = getUIImage(name: imgFilename)
    }
    
    func getUIImage(name:String) -> UIImage {
        return UIImage(named: name)!
    }
}

