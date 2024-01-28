//
//  File.swift
//  BankManagerConsoleApp
//
//  Created by Roh on 1/27/24.
//

final class Bank {
    // 출근한 은행원
    var numberOfWorkers: Int = 0
    var workers: [BankOne]?
    
    func numberOfgoToWork(number workers: Int) {
        numberOfWorkers = workers
        for worker in 0...numberOfWorkers {
            self.workers?[worker] = BankOne()
        }
    }
    
    // - 고객 대기열
    func getCustomerQueue(customer: Customer?) {
        // 큐로 손님 관리
        guard let watingPeople = customer else {
            return
        }
        var manageQueue = BankTellerQueue<Customer>()
        manageQueue.enqueue(item: watingPeople) // item? 이름 이상
        
    }
    // - 은행업무 종료
    private func close() {
    
    }
}
