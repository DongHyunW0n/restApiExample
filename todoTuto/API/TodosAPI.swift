//
//  TodosAPI.swift
//  todoTuto
//
//  Created by WonDongHyun on 2023/01/10.
//

import Foundation


enum TodosAPI {
    
    static let version = "v1"
    
    
    #if DEBUG // 디버그용
    
    
    
    static let baseURL = "https://phplaravel-574671-2962113.cloudwaysapps.com/api/" + version
    #else // 릴리즈
    static let baseURL = "https://phplaravel-574671-2962113.cloudwaysapps.com/api/" + version
    #endif
    
    
    enum ApiError : Error {
        
        case parsingError
        
        case noContent
        
        case decodingError
        
        case badStatus(code: Int)
    }
    
    /// 모든 할 일 목록 가져오기
    static func fetchTodos(page : Int = 1, done: @escaping (Result<TodosResponse, ApiError>) -> Void) {//성공하면 todosresponse, 실패하면 위에서 열거형으로 만든 apierror으로 내보낼거임.
        
        // 1. URL Request 를 만든다
        
        
        let urlString = baseURL + "/todos" + "?page=\(page)"
        
        let url = URL(string: urlString)!
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.addValue("application/json", forHTTPHeaderField: "accept")

        // 2. URL Session 으로 API를 호출한다
        // 3. API 호출에 대한 응답을 받는다
        URLSession.shared.dataTask(with: urlRequest) { data, UrlResponse, err in //들어온게 데이터 ,url리스폰스는 모든 들어오는 데이터, 에러는없으면 Nil~
            
            print("data : \(data)")
            print("urlResponse : \(UrlResponse)")
            print("err : \(err)")

            
            
            if let jsonData = data {
                 // convert data to our swift model
                 do {
                     
                     //JSON -> Struct로 변경하는 과정, 데이터 파싱
                   let todosResponse = try JSONDecoder().decode(TodosResponse.self, from: jsonData)
                   let modelObjects = todosResponse.data
                     
                     print("todosResponse: \(todosResponse)")
                     done(.success(todosResponse)) //성공됐을때는 잘 만들어진 투두스리스폰스를 올려줌
//                   completion(.success(modelObjects))
                 } catch {
                   // decoding error
//                   completion(.failure(error))
                     done(.failure(ApiError.decodingError)) //원인이 확실하니까 api에러 열거형에서 디코딩에러를 불러옴.
                 }
               }
            
        }.resume()
        
        
        
       
        
        
    }
    
    
    
    
}


