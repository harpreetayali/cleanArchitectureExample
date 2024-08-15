//
//  MessageRepositoryImpl.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

import Foundation

class MessageRepositoryImpl:MessageRepository{
    var dataSource:MessageDataSource
    
    init(dataSource: MessageDataSource) {
        self.dataSource = dataSource
    }
    
    func getMessages() -> [MessageModel] {
        return dataSource.getMessages()
    }
}
