//
//  Source.swift
//  TrueOrAction
//
//  Created by Хван Эдуард on 25.10.2023.
//

import Foundation

struct Source {
    enum SourceType {
        case word
        case action
    }
    
    private static let trueSource = ["Tell me 5 facts about yourself", "How would you spend a million dollar", "What's your biggest regret?", "What do you like most about me?"]
    
    private static let actionSource = ["Make 50 push-ups", "Show me your gallery", "Drink 50g of vodka", "Make 10 pull-ups"]
    
    static func getInfo(type: SourceType) -> String {
        switch type{
        case .word:
            return trueSource[Int.random(in: 0 ..< trueSource.count)]
        case .action:
            return actionSource[Int.random(in: 0 ..< trueSource.count)]
        }
    }
}
