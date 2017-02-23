//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 小本裕也 on 2017/02/17.
//  Copyright © 2017年 小本裕也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var susumu: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var StartStop: UIButton!
    
    @IBOutlet weak var modoru: UIButton!
    let imageArray = ["Image-1","Image-2","Image-3"]
    var count = 0
    var timer:Timer!
    
    @IBAction func susumu(_ sender: Any) {
        count += 1
        if (count > 2){
            count = 0
        }
        imageView.image = UIImage(named:imageArray[count])
    }
    
    @IBAction func modoru(_ sender: Any) {
        count -= 1
        if(count < 0){
            count = 2
        }
        imageView.image = UIImage(named:imageArray[count])
    }
    
    
    @IBAction func StartStop(_ sender: Any) {
        
        if self.timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            susumu.isEnabled = false //有効無効のプロパティ
            modoru.isEnabled = false
            StartStop.setTitle("停止", for:.normal)
        }
        else {
            self.timer.invalidate()
            self.timer = nil
            susumu.isEnabled = true
            modoru.isEnabled = true
            StartStop.setTitle("再生", for:.normal)
        }
    }
    
    func updateTimer() {
        count += 1
        if ( count > 2 ) {
            count = 0
        }
        imageView.image = UIImage(named:imageArray[count])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image = UIImage(named:imageArray[0])
    }
    
    
    @IBAction func tapped(_ sender: Any) {
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        let viewcontroller2:ViewController2 = segue.destination as! ViewController2
        viewcontroller2.img = imageArray[count] //必要
        if timer != nil{
        timer.invalidate()
            self.timer = nil
            susumu.isEnabled = true
            modoru.isEnabled = true
            StartStop.setTitle("再生", for:.normal)
        }
}

    @IBAction func modoru(segue:UIStoryboardSegue){
    }
    
    
}

