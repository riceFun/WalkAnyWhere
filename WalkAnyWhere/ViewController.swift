//
//  ViewController.swift
//  WalkAnyWhere
//
//  Created by riceFun on 2018/6/21.
//  Copyright © 2018年 riceFun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         longitude 经度
         latitude 纬度
         
                            lon经度   lat纬度
                              |         |
                              |         |
         高德坐标拾取格式    120.251109,30.396263
         
         拾取网址 http://lbs.amap.com/console/show/picker
         */
        
        
        //通和十二橡树 120.251109,30.396263
//        let gcjLocation = (gcjLat:30.396263,gcjLng: 120.251109);
        
        //中大银座 120.081792,30.129681
        let gcjLocation = (gcjLat:30.129681,gcjLng: 120.081792);
        
        //从高德坐标(gcj)拾取后 转为wgs坐标
        let wgsLocation = LocationTransform.gcj2wgs(gcjLat: gcjLocation.gcjLat, gcjLng: gcjLocation.gcjLng)
        print("########\n转化结果:\nlat:\(wgsLocation.wgsLat);\nlng:\(wgsLocation.wgsLng)\n########");
        
        let tipsLabel = UILabel.init(frame:CGRect.init(x: 0, y: 0, width: 200, height: 50))
        tipsLabel.center = self.view.center
        tipsLabel.backgroundColor = UIColor.lightGray
        tipsLabel.textAlignment = NSTextAlignment.center
        tipsLabel.text = "已加载自定义定位地址"
        self.view.addSubview(tipsLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

