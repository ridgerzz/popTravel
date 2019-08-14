 //
//  NetworkService.swift
//  popTravel
//
//  Created by Ridge Lanuza on 8/7/19.
//  Copyright © 2019 Ridge Lanuza. All rights reserved.
//

 import Foundation
 import Moya
 
 private let apiKey = "ywaKDHa4NRVtoiCuTFhyzBrDvgP4vBnV8tatq1TrRLcFVgCFA9LKlpYDRFSSwSgHhKXCDDe-RTU9_CnGhfgdCSA1XWTiqvyKGfbmkVmk3daNb6mZ_md5-xezndtJXXYx"
 
 enum YelpService {
    enum BusinessesProvider: TargetType {
        case search(lat: Double, long: Double)
        case details(id: String)
        
        var baseURL: URL {
            return URL(string: "https://api.yelp.com/v3/businesses")!
        }
        
        var path: String {
            switch self {
            case .search:
                return "/search"
            case let .details(id):
                return "/\(id)"
            }
        }
        
        var method: Moya.Method {
            return .get
        }
        
        var sampleData: Data {
            return Data()
        }
        
        var task: Task {
            switch self {
            case let .search(lat, long):
                return .requestParameters(
                    parameters: ["latitude": lat, "longitude": long, "limit": 10], encoding: URLEncoding.queryString)
            case .details:
                return .requestPlain
            }
            
        }
        
        var headers: [String : String]? {
            return ["Authorization": "Bearer \(apiKey)"]
        }
    }
 }
