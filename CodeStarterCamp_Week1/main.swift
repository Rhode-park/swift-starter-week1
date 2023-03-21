//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct PaepaeroFactory {
    enum constant {
        static let information = """
                                <정보>
                                길이: %d
                                몸통: %@
                                토핑: %@
                                막대길이: %d
                                
                                """
    }
    
    func drawPaepaero(bodyLength: Int, body: String, topping: String, barLength: Int) {
        displayPaepaeroInformation(bodyLength: bodyLength, body: body, topping: topping, barLength: barLength)
        drawPaepaeroBody(length: bodyLength, body: body, topping: topping)
        drawPaepaeroBar(length: barLength)
    }
    
    private func displayPaepaeroInformation(bodyLength: Int, body: String, topping: String, barLength: Int) {
        print(String(format: constant.information, bodyLength, body, topping, barLength))
    }
    
    private func drawPaepaeroBody(length: Int, body: String, topping: String) {
        for _ in 1...length {
            print(topping, body, topping, separator: "")
        }
    }
    
    private func drawPaepaeroBar(length: Int) {
        for _ in 1...length {
            print(" | |")
        }
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
