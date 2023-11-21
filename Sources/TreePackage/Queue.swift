//
//  File.swift
//  
//
//  Created by Vladyslav Vovk on 21.11.2023.
//

import Foundation

public protocol Queue {
    associatedtype Element
    @discardableResult mutating func enqueue(_ element: Element) -> Bool
    @discardableResult mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

//*******************************
public struct QueueArray<T>: Queue {
    private var array: [T] = []
    public init() {}
    
    public var isEmpty: Bool {
        array.isEmpty
    }
    public var peek: T? {
        array.first
    }
    
    @discardableResult public mutating func enqueue(_ element: T) -> Bool {
        array.append(element)
        return true
    }
    
    @discardableResult public mutating func dequeue() -> T? {
        isEmpty ? nil : array.removeFirst()
    }
}

extension QueueArray: CustomStringConvertible {
    public var description: String {
        String(describing: array)
    }
}
