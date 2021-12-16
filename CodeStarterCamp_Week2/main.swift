//
//  main.swift
//  CodeStarterCamp_Week2
//
//  Created by quokkaaa
//  Copyright © yagom academy. All rights reserved

import Foundation

func generateLotteryNumbers(count: Int) -> Set<Int> {
    var numbers: Set<Int> = []
    while numbers.count < count {
        numbers.insert(Int.random(in: 1...45))
    }
    return numbers
}

func confirmLotteryNumbers(_ numbers: [Int]) -> String {
    var lotteryNumbers = generateLotteryNumbers(count: 6)
    var loteryNumbersArray: [Int] = []
    var answerNumbers: [Int] = []
    
    for _ in 0..<lotteryNumbers.count {
        loteryNumbersArray.append(lotteryNumbers.removeFirst())
    }
    for i in 0..<numbers.count {
        if numbers[i] == loteryNumbersArray[i] {
            answerNumbers.append(numbers[i])
        }
    }
    
    if answerNumbers.count >= 1 {
        return "축하합니다! 겹치는 번호는 \(answerNumbers) 입니다!"
    } else {
        return "아쉽지만 겹치는 번호가 없습니다."
    }
}

let myLottoNumbers: [Int] = [7, 8, 15, 20, 23, 38]
print(confirmLotteryNumbers(myLottoNumbers))
