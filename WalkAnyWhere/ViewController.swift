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
        
        //莱茵矩阵 120.108118,30.292811
//        let gcjLocation = (gcjLat:30.292811,gcjLng: 120.108118);
        
        //中大银座 120.081792,30.129681
//        let gcjLocation = (gcjLat:30.129681,gcjLng: 120.081792);
        
        
        //许村人民镇府 120.361009,30.424192
//        let gcjLocation = (gcjLat:30.424192,gcjLng: 120.361009);
        
        //天都城星巴克 120.249282，30.38641
//        let gcjLocation = (gcjLat:30.38641,gcjLng: 120.249282);
        
        // 厦门中医院 118.1409,24.500654
//        let gcjLocation = (gcjLat:24.500654,gcjLng: 118.1409);
        
        
        // 上海陆家嘴 121.5025,31.237015
//        let gcjLocation = (gcjLat:31.237015,gcjLng: 121.5025);
        
        //海宁西站
//        let gcjLocation = (gcjLat:30.438801,gcjLng: 120.391813);
        
        //青岛第十五中学
//        let gcjLocation = (gcjLat:36.097661,gcjLng: 120.387365);
        
        //开化马金汽车站
//        let gcjLocation = (gcjLat:29.29613,gcjLng: 118.418225);
        
        //汾口秀琴家
//        let gcjLocation = (gcjLat:29.431399,gcjLng: 118.547421);
        
        //下乘风源
//        let gcjLocation = (gcjLat:29.387884,gcjLng: 118.438959);
        
        //西安大雁塔
        let gcjLocation = (gcjLat:34.218229,gcjLng: 108.964176);


        
        
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

