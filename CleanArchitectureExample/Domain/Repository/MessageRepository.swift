//
//  MessageRepository.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

protocol MessageRepository {
    func getMessages() -> [MessageModel]
}
