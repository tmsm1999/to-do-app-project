//
//  Task+Details.swift
//  ToDo
//
//  Created by Tomas Mamede on 20/04/2025.
//

import SwiftUI

struct Task_Details: View {

    @Binding var taskDueDate: Date?

    @State var hasDueDate: Bool = false
    @State private var currentDate: Date = .now

    var body: some View {

        VStack(spacing: 16) {

            Toggle("Due Date", isOn: $hasDueDate)

            if hasDueDate {
                DatePicker("", selection: $currentDate)
            }

            Spacer()
        }
        .navigationTitle("Task Details")
        .padding(.horizontal, 16)
        .onChange(of: currentDate) {
            taskDueDate = hasDueDate ? currentDate : nil
        }
        .onAppear {

            if let taskDueDate {

                hasDueDate = true
                currentDate = taskDueDate
            }
        }
    }
}

#Preview {
    Task_Details(taskDueDate: .constant(.now), hasDueDate: true)
}
