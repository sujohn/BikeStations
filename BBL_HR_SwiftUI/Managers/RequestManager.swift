//
//  RequestManager.swift
//  BBL_HR_SwiftUI
//
//  Created by Shaiful Islam on 10/20/22.
//

import Foundation

enum APIError: Error {
    case invalidURL, requesError, decodingError, statusNotOk
}

enum RequestMethod: String {
    case GET = "GET"
    case POST = "POST"
}

let BASE_URL: String = "http://www.poznan.pl/mim/plan/map_service.html"
//http://www.poznan.pl/mim/plan/map_service.html?mtype=pub_transport&co=stacje_rowerowe


class RequestManager {
    
    func request<T: Decodable>(endPoint: String, ofType: T.Type, params: [String:Any], method: RequestMethod) async throws -> T {
        
        guard let url = URL(string: "\(BASE_URL)\(endPoint)") else {
            throw APIError.invalidURL
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: params, options: []) else {
            throw APIError.requesError
           }
        urlRequest.httpBody = httpBody
        
        guard let (data, response) = try? await URLSession.shared.data(from: url) else {
            throw APIError.requesError
        }
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw APIError.statusNotOk
        }
        
        guard let result = try? JSONDecoder().decode(T.self, from: data) else {
            throw APIError.decodingError
        }
        
        return result
    }
}
