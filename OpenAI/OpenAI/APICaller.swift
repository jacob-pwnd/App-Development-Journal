//
//  APICaller.swift
//  OpenAI
//
//  Created by user232149 on 4/9/23.
//
import OpenAISwift
import Foundation

final class APICaller {
    static let shared = APICaller()
    
    @frozen enum Constants{
        static let key = "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"
    }
    private var client: OpenAISwift
    private init() {}
    
    public func setup() {
        let client = OpenAISwift(authToken: Constants.key)
    }
    public func getResponse(input: String,
                            completion: @escaping (Result<String, Error>) -> Void) {
        client?.sendCompletion(with: input, completionHandler: { result in
            switch result {
            case.success(let model):
                let output = model.choices.first?.text ?? ""
                completion(.success(output))
                
            case.failure(let error):
                completion(.failure(error))
            }
        })
    }
}
