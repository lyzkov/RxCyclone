//
//  State.swift
//  RxCyclone
//
//  Created by Piotr Łyczba on 09/05/2019.
//  Copyright © 2019 lyzkov. All rights reserved.
//

import RxSwift

protocol ReducibleState {
    associatedtype Event: EventType

    static var initial: Self { get }
    static func reduce(state: Self, _ event: Event) -> Self
}

extension ObservableConvertibleType where Element: ReducibleState {

    subscript<Value>(_ keyPath: KeyPath<Element, Value>) -> Observable<Value> {
        return asObservable().map { $0[keyPath: keyPath] }
    }

}
