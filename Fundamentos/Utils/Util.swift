//
//  Util.swift
//  Fundamentos
//
//  Created by Félix Luján Albarrán on 4/12/20.
//

import UIKit


class Util {
    private static let colors = [UIColor(named: "cgreen"), UIColor(named: "corange"), UIColor(named: "cpink"), UIColor(named: "cpurple"), UIColor(named: "cred")]
    
    static func getColorRandom() -> UIColor {
        return Util.colors[Int.random(in: 0..<colors.count)] ?? .black
    }
}
