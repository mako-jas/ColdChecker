//
//  ViewController.swift
//  cold_checker
//
//  Created by 石井真子 on 2017/02/19.
//  Copyright © 2017年 石井真子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonRegist: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonRegist.backgroundColor = UIColor(colorLiteralRed: 103/205, green: 204/255, blue: 255/255, alpha: 1)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

