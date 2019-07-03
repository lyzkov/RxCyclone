//
//  Cyclone.swift
//  RxCyclone
//
//  Created by Piotr Łyczba on 09/05/2019.
//  Copyright © 2019 lyzkov. All rights reserved.
//

import RxSwift
import RxFeedback

protocol Cyclone {
    associatedtype State: ReducibleState
    typealias Event = State.Event

    var output: Observable<State> { get }
}

extension Cyclone {

    func state(from events: Observable<Event>) -> Observable<State> {
        return Observable
            .system(
                initialState: State.initial,
                reduce: State.reduce,
                scheduler: MainScheduler.instance,
                feedback: { _ in events }
            )
            .share(replay: 1)
    }

    func state(from events: Observable<Event>...) -> Observable<State> {
        return state(from: Observable.merge(events))
    }

}
