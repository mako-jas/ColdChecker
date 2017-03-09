//
//  RegisterColdness.swift
//  cold_checker
//
//  Created by 石井真子 on 2017/02/19.
//  Copyright © 2017年 石井真子. All rights reserved.
//

import UIKit

//＊＊その日の防寒道具を記録する＊＊

class RegisterColdness: UIViewController {
    
    var when:Int = 0
    var Regist_temp:Double = 0
    var user_comment:Int = 0
    var weight:Double = 0
    
    var itemA:Int = 0
    var itemB:Int = 0
    var itemC:Int = 0
    var itemD:Int = 0
    var itemE:Int = 0
  
   
    @IBAction func buttonRegistItems(sender: UIButton) {
        //weightを計算
        var items_sum:Int
        items_sum = itemA + itemB + itemC + itemD + itemE
        weight = Regist_temp / (Double(items_sum) * Double(5-user_comment))
        Data.data.user_weight.insertObject(weight, atIndex: 0)
    }
    


    
    @IBAction func RegisterWhen(sender: AnyObject) {
        Regist_temp = Data.data.temp(sender.selectedSegmentIndex)

    }
    

    
  
    //itemsをDataに送る
    @IBAction func RegisterItems(sender: AnyObject) {
        switch sender.tag {
        case 0:
            Data.data.a.insertObject(sender.selectedSegmentIndex, atIndex: 0)
            itemA = sender.selectedSegmentIndex
            break;
        case 1:
            Data.data.b.insertObject(sender.selectedSegmentIndex, atIndex: 0)
            itemB = sender.selectedSegmentIndex
            break;
        case 2:
            Data.data.c.insertObject(sender.selectedSegmentIndex, atIndex: 0)
            itemC = sender.selectedSegmentIndex
            break;
        case 3:
            Data.data.d.insertObject(sender.selectedSegmentIndex, atIndex: 0)
            itemD = sender.selectedSegmentIndex
            break;
        case 4:
            Data.data.e.insertObject(sender.selectedSegmentIndex, atIndex: 0)
            itemE = sender.selectedSegmentIndex
            break;
        default:
            print("該当無し")
        }

    }
    

    
    
    @IBAction func RegistHowfeel(sender: AnyObject) {
        user_comment = sender.selectedSegmentIndex
    }

    
    
    
    
    //勉強
    func insertData(index:Int,a:Int, b:Int, c:Int,d:Int ,e:Int )
    {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  buttonRegistItems.backgroundColor = UIColor(colorLiteralRed: 103/205, green: 204/255, blue: 255/255, alpha: 1)
        
    /*
        
        self.insertData(0, a: 1, b: 1, c: 1, d: 1, e: 1)
        self.insertData(1, a: 2, b: 1, c: 1, d: 1, e: 1)
        self.insertData(2, a: 3, b: 1, c: 1, d: 1, e: 1)
        self.insertData(3, a: 4, b: 1, c: 1, d: 1, e: 1)
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "complete")
        {
 //           print(items)
        }
    }

}
