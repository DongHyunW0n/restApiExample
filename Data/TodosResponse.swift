//
//  TodosResponse.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/10.
//

import Foundation


// MARK: - TodosResponse

//JSON -> Struct, class 이 과정은 Decoding
struct TodosResponse: Decodable {
    let data: [Todo]?
    let meta: Meta?
    let message: String?
}

// MARK: - Todo
struct Todo: Codable {
    let id: Int?
    let title: String?
    let isDone: Bool?
    let createdAt, updatedAt: String?

    enum CodingKeys: String, CodingKey { //is_done을 쓰기 싫어서 코딩키를 통해 변경 
        case id, title
        case isDone = "is_done"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
}

// MARK: - Meta
struct Meta: Codable {
    let currentPage, from, lastPage, perPage: Int?
    let to, total: Int?

    enum CodingKeys: String, CodingKey {
        case currentPage = "current_page"
        case from
        case lastPage = "last_page"
        case perPage = "per_page"
        case to, total
    }
}
