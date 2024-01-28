//
//  Observer.swift
//  BankManagerConsoleApp
//
//  Created by Roh on 1/28/24.
//

protocol Observer {
    var id: String { get set }
    func update()
}

protocol Publisher {
    var observers: [Observer] { get set }
    func subscribe(observer: Observer)
    func unSubscribe(observer: Observer)
    func notify(message: String)
}

extension Publisher {
    mutating func subscribe(observer: Observer) {
        self.observers = observers
    }
    
    mutating func unSubscribe(observer: Observer) {
        self.observers = observers
    }
    
    func notify(message: String) {
        for observer in observers {
            observer.update()
        }
    }
}

extension Observer {
    func update() {
        
    }
}
