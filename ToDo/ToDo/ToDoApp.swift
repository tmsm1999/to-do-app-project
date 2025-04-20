//
//  ToDoApp.swift
//  ToDo
//
//  Created by Tomas Mamede on 20/04/2025.
//

import SwiftUI

@main
struct ToDoApp: App {

    @State private var tasks: [Task] = Task.tasks

    var body: some Scene {
        WindowGroup {
            List_View(tasks: $tasks)
        }
    }
}
