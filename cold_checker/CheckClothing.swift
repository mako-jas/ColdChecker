//
//  CheckClothing.swift
//  cold_checker
//
//  Created by 石井真子 on 2017/02/19.
//  Copyright © 2017年 石井真子. All rights reserved.
//

import UIKit

class CheckClothing: UIViewController {
    
    
    @IBOutlet weak var itemA_hat: UIImageView!
    
    @IBOutlet weak var itemB_maf: UIImageView!
    
    @IBOutlet weak var itemC_globe: UIImageView!
    
    @IBOutlet weak var itemD_nitto: UIImageView!
    
    @IBOutlet weak var itemE_butu: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if Data.data.getAA(0) as! NSObject==2 {
            itemA_hat.hidden = false
        }
        if Data.data.getBB(0) as! NSObject==2 {
            itemB_maf.hidden = false
        }
        if Data.data.getCC(0) as! NSObject==2 {
            itemC_globe.hidden = false
        }
        if Data.data.getDD(0) as! NSObject==2 {
            itemD_nitto.hidden = false
        }
        if Data.data.getEE(0) as! NSObject==2 {
            itemE_butu.hidden = false
        }
        
        

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
