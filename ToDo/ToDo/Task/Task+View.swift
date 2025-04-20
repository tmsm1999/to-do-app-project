//
//  Task+View.swift
//  ToDo
//
//  Created by Tomas Mamede on 20/04/2025.
//

import SwiftUI

struct Task_View: View {

    @Binding var task: Task

    var body: some View {

        HStack {
            
            HStack(spacing: 8) {

                Button(action: {
                    task.isCompleted.toggle()
                }) {
                    Image(systemName: task.isCompleted ? "circle.fill" : "circle")
                        .foregroundStyle(task.listColor)
                }
                .buttonStyle(.plain)

                TextField("New Task", text: $task.name)
            }

            Spacer()

            HStack(spacing: 24) {

                Button(action: {
                    task.isPriority.toggle()
                }) {
                    Image(systemName: task.isPriority ? "flag.fill" : "flag")
                        .foregroundStyle(.red)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    Task_View(task: .constant(.mockTask))
}
