//
//  Task.swift
//  ToDo
//
//  Created by Tomas Mamede on 20/04/2025.
//

import Foundation
import SwiftUI

struct Task: Identifiable {

    let id: String = UUID().uuidString
    var name: String
    let creationDate: Date = Date()
    var dueDate: Date? // Optional because some tasks may have a due date and others don't.
    var isCompleted: Bool = false
    var isPriority: Bool
    var listColor: Color
}

extension Task {

    static let mockTask: Self = .init(name: "Task", isPriority: false, listColor: .orange)

    static let mockTaskWithDueDate: Self = .init(
        name: "Task with due date",
        dueDate: Date.now.addingTimeInterval(86400),
        isCompleted: false,
        isPriority: false,
        listColor: .blue
    )

    static let mockCompletedTask: Self = .init(
        name: "Task Completed",
        dueDate: nil,
        isCompleted: true,
        isPriority: false,
        listColor: .red
    )

    static let priorityTask: Self = .init(
        name: "Priority Task",
        dueDate: Date.now.addingTimeInterval(86400),
        isCompleted: false,
        isPriority: true,
        listColor: .green
    )

    static let tasks: [Self] = [
        .mockTask,
        .mockTaskWithDueDate,
        .mockCompletedTask,
        .priorityTask
    ]
}
