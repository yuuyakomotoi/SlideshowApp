//
//  ViewController2.swift
//  SlideshowApp
//
//  Created by 小本裕也 on 2017/02/17.
//  Copyright © 2017年 小本裕也. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

 
    @IBOutlet weak var imageView2: UIImageView!

    var img:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      imageView2.image = UIImage(named:img)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
