//
//  BankManager.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

enum BankManager {
    // - 은행 개점
    
    case startWork
    case donwWork(Float)
    
    var workState: String {
        switch self {
        case.donwWork:
            return "쉬는중"
        case.startWork:
            return "일중"
        }
    }
}

extension BankManager: Publisher {
    func unSubscribe(observer: Observer) {
        <#code#>
    }
    
    func subscribe(observer: Observer) {
        <#code#>
    }
    
    var observers: [Observer] {
        get {
            <#code#>
        }
        set {
            <#code#>
        }
    }
    
    // 처리하는데 걸리는 시간 리턴
    var process: Float {
        switch self {
        case .donwWork(let time):
            return time
        case .startWork:
            
            return 0
        }
    }
}
