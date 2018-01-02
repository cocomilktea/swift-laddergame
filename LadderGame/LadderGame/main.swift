//
//  main.swift
//  LadderGame
//
//  Created by JK on 09/10/2017.
//  Copyright © 2017 Codesquad Inc. All rights reserved.
//

import Foundation

let input = InputView()
let result = ResultView()
var run = true
while run {
    let inputPlayer = input.getNameOfPlayer()!
    for idx in 0..<inputPlayer.count {
        guard inputPlayer[idx].count < 6 else { print("참여하는 사람 이름은 최대 5글자까지 가능합니다."); run = true; continue }
        run = false
    }
    
    let heightOfLadder = input.getHeightOfLadder()
    let laddergame = LadderGame.init(heightOfLadder, inputPlayer)
    let generateLadder = laddergame.generateLadders()
    let value = laddergame.addHorizontalLadder(generateLadder)
    result.drawHorizontalLadder(value)
    
    for idx in 0..<inputPlayer.count {
        result.printPlayers(inputPlayer.count, laddergame.name[idx].name, laddergame.name[idx].name.count )
    }
    
}
