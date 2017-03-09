//
//  Data.swift
//  cold_checker
//
//  Created by 石井真子 on 2017/03/05.
//  Copyright © 2017年 石井真子. All rights reserved.
//

import UIKit


class Data: NSObject {
    
    static let data = Data()
    private override init() {
        
    }
    
    //登録するitemms
    var a:NSMutableArray = [];
    var b:NSMutableArray = [];
    var c:NSMutableArray = [];
    var d:NSMutableArray = [];
    var e:NSMutableArray = [];
 
    //レコメンドするitems(0,1は着ない、2は着る)
    var aa:NSMutableArray = [];
    var bb:NSMutableArray = [];
    var cc:NSMutableArray = [];
    var dd:NSMutableArray = [];
    var ee:NSMutableArray = [];
    
    //算出したユーザの重み
    var user_weight:NSMutableArray = [];
    
    
    
    //気温情報
    func temp(num:Int) -> Double {
        switch num {
        case 0:
            return 19.0
        case 1:
            return 23.0
        case 2:
            return 27.5
        default:
            return 99.9
        }
    }
    
    
    //値の引き渡し
    func getWeight(index:Int) -> Double
    {
        return Double(user_weight[index] as! NSNumber)
    }
    func getAA(index:Int) -> AnyObject
    {
        return aa[index]
    }
    func getBB(index:Int) -> AnyObject
    {
        return bb[index]
    }
    func getCC(index:Int) -> AnyObject
    {
        return cc[index]
    }
    func getDD(index:Int) -> AnyObject
    {
        return dd[index]
    }
    func getEE(index:Int) -> AnyObject
    {
        return ee[index]
    }
    
    //勉強
    func getA(index:Int) -> AnyObject
    {
        return a[index]
    }
    
    
}
