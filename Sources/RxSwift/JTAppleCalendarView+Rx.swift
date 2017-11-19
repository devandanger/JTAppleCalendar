//
//  JTAppleCalendarLayout+Rx.swift
//  JTAppleCalendar iOS
//
//  Created by Evan Anger on 11/18/17.
//

import Foundation
import JTAppleCalendar
import RxSwift
import RxCocoa

func castOrThrow<T>(_ resultType: T.Type, _ object: Any) throws -> T {
    guard let returnValue = object as? T else {
        throw RxCocoaError.castingError(object: object, targetType: resultType)
    }
    return returnValue
}

extension Reactive where Base: JTAppleCalendarView {
    
}
