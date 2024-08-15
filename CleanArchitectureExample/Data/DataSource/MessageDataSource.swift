//
//  MessageDataSource.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

protocol MessageDataSource {
    func getMessages() -> [MessageModel]
}
