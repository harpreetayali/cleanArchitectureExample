//
//  MessageListViewModel.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

import SwiftUI

class MessageListViewModel: ObservableObject {
 
    var getMessagesUseCase = GetMessagesUseCase(repository: MessageRepositoryImpl(dataSource: MessageDataSourceImpl()))
    
    @Published var messages:[MessageModel] = []
    
    func getMessages() {
        let result = getMessagesUseCase.execute()
        
        switch result {
        case .success(let messages):
            self.messages = messages
        case .failure(let error):
            print(error)
        }
    }
}
