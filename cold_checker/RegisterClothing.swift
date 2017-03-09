//
//  RegisterClothing.swift
//  cold_checker
//
//  Created by 石井真子 on 2017/02/19.
//  Copyright © 2017年 石井真子. All rights reserved.
//

import UIKit

class RegisterClothing: UIViewController {
    
    var recom_temp:Double = 0
    
    var itemAA:Int = 0
    var itemBB:Int = 0
    var itemCC:Int = 0
    var itemDD:Int = 0
    var itemEE:Int = 0
    
    var weight:Double = 0
    var u_sum:Double = 0//着るべきアイテム数
    let comment:Double = 3
    
    var items_sum:Double = 0//ユーザが着ると決めたアイテムの数
    var diff_item:Double = 0//着るべきアイテム数とユーザが着るべきアイテム数の差
    
    
    @IBAction func TodayWhen(sender: AnyObject) {
        recom_temp = Data.data.temp(sender.selectedSegmentIndex)
    }
    
    
    
    
    
    @IBAction func SelectItems(sender: AnyObject) {
        switch sender.tag {
        case 0:
            if(sender.selectedSegmentIndex == 0 || sender.selectedSegmentIndex == 2){
                Data.data.aa.insertObject(sender.selectedSegmentIndex, atIndex: 0)
                itemAA = sender.selectedSegmentIndex
            }
            break;
        case 1:
            if(sender.selectedSegmentIndex == 0 || sender.selectedSegmentIndex == 2){
                Data.data.bb.insertObject(sender.selectedSegmentIndex, atIndex: 0)
                itemBB = sender.selectedSegmentIndex
            }
            break;
        case 2:
            if(sender.selectedSegmentIndex == 0 || sender.selectedSegmentIndex == 2){
                Data.data.cc.insertObject(sender.selectedSegmentIndex, atIndex: 0)
                itemCC = sender.selectedSegmentIndex
            }
            break;
        case 3:
            if(sender.selectedSegmentIndex == 0 || sender.selectedSegmentIndex == 2){
                Data.data.dd.insertObject(sender.selectedSegmentIndex, atIndex: 0)
                itemDD = sender.selectedSegmentIndex
            }
            break;
        case 4:
            if(sender.selectedSegmentIndex == 0 || sender.selectedSegmentIndex == 2){
                Data.data.ee.insertObject(sender.selectedSegmentIndex, atIndex: 0)
                itemEE = sender.selectedSegmentIndex
            }
            break;
        default:
            print("該当無し")
        }
        
    }
    
    
    
    @IBAction func buttonCheckItems(sender: AnyObject) {
        //必要なアイテムの合計数を求める
        //u_sum = itemAA + itemBB + itemCC + itemDD + itemEE
        weight = Data.data.getWeight(0)
        print(weight)
        u_sum = recom_temp / (weight * (5-comment))
            
        //すでに決まっているアイテム数を数える
        if itemAA==2 {items_sum += 1}
        if itemBB==2 {items_sum += 1}
        if itemCC==2 {items_sum += 1}
        if itemDD==2 {items_sum += 1}
        if itemEE==2 {items_sum += 1}
        
        //足りないアイテムを割り当てる（アイテムの優先度をこちらで決めておく
        diff_item = u_sum - items_sum
        if diff_item > 0 {
            if diff_item > 0 && itemAA == 1  {
                itemAA = 2
                Data.data.aa.insertObject(2, atIndex: 0)
                diff_item -= 1
            }
            if diff_item > 0 && itemCC == 1  {
                itemCC = 2
                Data.data.cc.insertObject(2, atIndex: 0)
                diff_item -= 1
            }
            if diff_item > 0 && itemEE == 1  {
                itemAA = 2
                Data.data.ee.insertObject(2, atIndex: 0)
                diff_item -= 1
            }
            if diff_item > 0 && itemDD == 1  {
                itemAA = 2
                Data.data.dd.insertObject(2, atIndex: 0)
                diff_item -= 1
            }
            if diff_item > 0 && itemBB == 1  {
                itemAA = 2
                Data.data.bb.insertObject(2, atIndex: 0)
                diff_item -= 1
            }
        }

        
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
