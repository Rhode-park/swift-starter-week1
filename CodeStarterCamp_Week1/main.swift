//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

func drawIcecreamBody(lines: Int) {
    for _ in 1...lines {
        print("***********")
    }
}

func drawIcecreamBar(lines: Int) {
    for _ in 1...lines {
        print("    | |")
    }
}

drawIcecreamBody(lines: 8)
drawIcecreamBar(lines: 4)
