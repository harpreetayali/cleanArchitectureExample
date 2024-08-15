//
//  MessageDataSourceImpl.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

class MessageDataSourceImpl: MessageDataSource {
    func getMessages() -> [MessageModel] {
        return [
            MessageModel(id: 1, message: "Hello World"),
            MessageModel(id: 2, message: "Hello World 2"),
            MessageModel(id: 3, message: "Hello World 3")
        ]
    }
}
