//
//  List+View.swift
//  ToDo
//
//  Created by Tomas Mamede on 20/04/2025.
//

import SwiftUI

struct List_View: View {

    @Binding var tasks: [Task] 

    var body: some View {

        NavigationStack {

            List {
                ForEach($tasks) { task in

                    NavigationLink(destination: {
                        Task_Details(taskDueDate: task.dueDate)
                    }) {
                        Task_View(task: task)
                    }
                }
                .onDelete(perform: removeTask)
            }
            .listStyle(.plain)
            .navigationTitle("My List")
            .toolbar {
                Button(action: {
                    addNewTask()
                }) {
                    Text("New task")
                }
            }
        }
    }

    private func addNewTask() {
        tasks.append(
            .init(
                name: "",
                isPriority: false,
                listColor: .cyan
            )
        )
    }

    private func removeTask(at offset: IndexSet) {
        tasks.remove(atOffsets: offset)
    }
}

#Preview {
    List_View(tasks: .constant(Task.tasks))
}
