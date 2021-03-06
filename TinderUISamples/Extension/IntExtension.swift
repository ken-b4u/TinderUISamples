//
//  IntExtension.swift
//  TinderUISamples
//
//  Created by 酒井文也 on 2018/02/04.
//  Copyright © 2018年 酒井文也. All rights reserved.
//

import Foundation
import UIKit

extension Int {

    //決まった範囲内（負数値を含む）での乱数値を作るメソッド
    //参考：コーディングしてる時「こういうのあったら書きやすいな」的な Extension まとめ（主に俺得）
    //https://qiita.com/lovee/items/67db977a1afc80b3148d
    static func createRandom(range: Range<Int>) -> Int {
        let rangeLength = range.upperBound - range.lowerBound
        let random = arc4random_uniform(UInt32(rangeLength))
        return Int(random) + range.lowerBound
    }
}
