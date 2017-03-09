//
//  RegisterResult.swift
//  cold_checker
//
//  Created by 石井真子 on 2017/02/19.
//  Copyright © 2017年 石井真子. All rights reserved.
//

import UIKit

class RegisterResult: UIViewController {
    @IBAction func tappedNitto(sender: AnyObject) {
        nitto.hidden = false
        globe.hidden = true
    }
    @IBAction func tappedGlobe(sender: AnyObject) {
        nitto.hidden = true
        globe.hidden = false
    }
    @IBAction func tappedBouth(sender: AnyObject) {
        nitto.hidden = false
        globe.hidden = false
    }

    @IBOutlet weak var globe: UIImageView!
    @IBOutlet weak var nitto: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
