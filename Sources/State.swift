//
//  State.swift
//  RxCyclone
//
//  Created by Piotr Łyczba on 09/05/2019.
//  Copyright © 2019 lyzkov. All rights reserved.
//

import RxSwift

public protocol ReducibleState {
    associatedtype Event: EventType

    static var initial: Self { get }
    static func reduce(state: Self, event: Event) -> Self
}

extension ObservableConvertibleType where Element: ReducibleState {

    public subscript<Value>(_ keyPath: KeyPath<Element, Value>) -> Observable<Value> {
        return asObservable().map { $0[keyPath: keyPath] }
    }

}
