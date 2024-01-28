//
//  Customer.swift
//  BankManagerConsoleApp
//
//  Created by Roh on 1/27/24.
//

import Foundation

struct Customer {
    // - 고객의 수
    var customerCount: Int
    // - 처리시간
    var taskTime: Int
    init(customerCount: Int = 0, taskTime: Int) {
        self.customerCount = customerCount
        self.taskTime = taskTime
    }
}
