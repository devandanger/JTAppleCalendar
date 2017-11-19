//
//  RxJTAppleCalendarViewDelegateProxy.swift
//  JTAppleCalendar iOS
//
//  Created by Evan Anger on 11/18/17.
//

import Foundation
import JTAppleCalendar
import RxSwift
import RxCocoa

extension JTAppleCalendarView: HasDelegate {
    public typealias Delegate = JTAppleCalendarViewDelegate
}

open class RxJTAppleCalendarViewDelegateProxy:
    DelegateProxy<JTAppleCalendarView, JTAppleCalendarViewDelegate>,
    DelegateProxyType,
JTAppleCalendarViewDelegate {
    open override func forwardToDelegate() -> JTAppleCalendarViewDelegate? {
        
    }
    
    open override func setForwardToDelegate(_ forwardToDelegate: JTAppleCalendarViewDelegate?, retainDelegate: Bool) {
        
    }
    
    public weak private(set) var calendarView: JTAppleCalendarView?

    public init(calendarView: ParentObject) {
        self.calendarView = calendarView
        super.init(parentObject: calendarView, delegateProxy: RxJTAppleCalendarViewDelegateProxy.self)
    }
    
    public static func registerKnownImplementations() {
        self.register { RxJTAppleCalendarViewDelegateProxy(calendarView: $0) }
    }
    
    public static func currentDelegate(for object: JTAppleCalendarView) -> JTAppleCalendarViewDelegate? {
        return object.calendarDelegate
    }
    
    public static func setCurrentDelegate(_ delegate: JTAppleCalendarViewDelegate?, to object: JTAppleCalendarView) {
        object.calendarDelegate = delegate
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        return JTAppleCell(frame: CGRect(x: 30, y: 30, width: 30, height: 30))
    }
    
    public func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        
    }
}



