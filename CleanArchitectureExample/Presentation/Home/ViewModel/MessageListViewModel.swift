//
//  MessageListViewModel.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

import SwiftUI

class MessageListViewModel: ObservableObject {
 
    var getMessagesUseCase: GetMessagesUseCase
    
    @Published var messages:[MessageModel] = []
    
    init(getMessagesUseCase: GetMessagesUseCase) {
        self.getMessagesUseCase = getMessagesUseCase
    }
    
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
