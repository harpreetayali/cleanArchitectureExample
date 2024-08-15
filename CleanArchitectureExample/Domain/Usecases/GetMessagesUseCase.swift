//
//  GetMessagesUseCase.swift
//  CleanArchitectureExample
//
//  Created by Harpreet Singh on 15/08/24.
//

enum UseCaseError:Error {
    case networkError, decodingError, undefinedError
}

protocol GetMessagesProtocol {
    func execute() -> Result<[MessageModel],UseCaseError>
}

class GetMessagesUseCase: GetMessagesProtocol {
    var repository:MessageRepository
   
    init(repository: MessageRepository) {
        self.repository = repository
    }
    
    func execute() -> Result<[MessageModel], UseCaseError> {
        let messages = repository.getMessages()
        
        return .success(messages)
    }
}
