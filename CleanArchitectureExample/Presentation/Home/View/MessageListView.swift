//
//  MessageListView.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

import SwiftUI

struct MessageListView: View {
    
    @StateObject var viewModel = MessageListViewModel(getMessagesUseCase: .init(repository: MessageRepositoryImpl(dataSource: MessageDataSourceImpl())))
    
    var body: some View {
        VStack {
            Text("Messages : ")
            
            List(viewModel.messages) { message in
                Text(message.message)
            }
        }
        .task {
            viewModel.getMessages()
        }
    }
}
