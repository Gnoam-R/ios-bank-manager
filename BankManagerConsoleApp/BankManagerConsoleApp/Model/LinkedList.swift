//
//  LinkedList.swift
//  BankManagerConsoleApp
//
//  Created by nayeon  on 2024/01/23.
//

import Foundation

final class LinkedList<Element> {
    private(set) var head: Node<Element>?
    private(set) var tail: Node<Element>?
    private(set) var count: Int = 0
    
    var isEmpty: Bool {
        head == nil
    }

    func append(new item: Element) {
        let newNode = Node(data: item)
        
        guard let node = tail else {
            head = newNode
            tail = newNode
            count = 1
            return
        }
        node.next = newNode
        tail = newNode
        tail?.previous = node
        count += 1
    }
    
    func prepend(new item: Element) {
        let newNode = Node(data: item)
        
        guard let node = head else {
            head = newNode
            tail = newNode
            count = 1
            return
        }
        node.previous = newNode
        head = newNode
        head?.next = node
        count += 1
    }
    
    func insert(new item: Element, at index: Int) {
        if index == 0 || index == count-1 {
            append(new: item)
            return
        }
        let newNode = Node(data: item)
        let previousNode = search(at: index)
        
        let nextNode = previousNode?.next
        previousNode?.next = newNode
        nextNode?.previous = newNode
        
        newNode.next = nextNode
        newNode.previous = previousNode
        
        count += 1
    }
    
    private func search(at index: Int) -> Node<Element>? {
        let isForward = (index <= count / 2)
        var node: Node<Element>?
        
        if isForward {
            node = head
            for _ in 0...index-1 {
                guard let next = node?.next else {
                    break
                }
                node = next
            }
        }
        else {
            node = tail
            let loopCount = count-index-1
            for _ in 1...loopCount {
                guard let previous = node?.previous else {
                    break
                }
                node = previous
            }
        }
        return node
    }
    func removeAt(at index: Int) -> Element? {
        
        if index == 0 {
            return removeFirst()
        }
        else if index == count-1 {
            return removeLast()
        }
        let removeNode = search(at: index)
        let prevNode = removeNode?.previous
        let nextNode = removeNode?.next
        
        prevNode?.next = nextNode
        nextNode?.previous = prevNode
        
        count -= 1
        return removeNode?.data
    }
    
    func removeFirst() -> Element? {
        let removeNodeValue = head?.data
        
        head = head?.next
        if isEmpty {
            tail = head
        }
        count -= 1
        
        return removeNodeValue
    }
    
    func removeLast() -> Element? {
        let removeNodeValue = tail?.data
        
        tail = tail?.previous
        head = isEmpty ? tail : head
        count = isEmpty ? count : count - 1
        
        return removeNodeValue
    }
    
    func removeAll() {
        head = nil
        tail = nil
        count = 0
    }
}

