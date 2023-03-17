//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct PaepaeroFactory {
    func drawPaepaero(bodyLength: Int, body: String, topping: String, barLength: Int) {
        drawPaepaeroInformation(bodyLength: bodyLength, body: body, topping: topping, barLength: barLength)
        drawPaepaeroBody(bodyLength: bodyLength, body: body, topping: topping)
        drawPaepaeroBar(barLength: barLength)
    }
    
    func drawPaepaeroInformation(bodyLength: Int, body: String, topping: String, barLength: Int) {
        print(String(format: constant.information, bodyLength, body, topping, barLength))
    }
    
    func drawPaepaeroBody(bodyLength: Int, body: String, topping: String) {
        for _ in 1...bodyLength {
            print(topping, body, topping, separator: "")
        }
    }
    
    func drawPaepaeroBar(barLength: Int) {
        for _ in 1...barLength {
            print(" | |")
        }
    }
}

extension PaepaeroFactory {
    enum constant {
        static let information = """
                                <정보>
                                길이: %d
                                몸통: %@
                                토핑: %@
                                막대길이: %d
                                
                                """
    }
}

let paepaeroFactory = PaepaeroFactory()

paepaeroFactory.drawPaepaero(bodyLength: 10, body: "***", topping: " ", barLength: 4)
print("")
paepaeroFactory.drawPaepaero(bodyLength: 12, body: "***", topping: "&", barLength: 4)
print("")
paepaeroFactory.drawPaepaero(bodyLength: 10, body: "***", topping: "#", barLength: 6)
print("")
paepaeroFactory.drawPaepaero(bodyLength: 6, body: "|0|", topping: " ", barLength: 4)
