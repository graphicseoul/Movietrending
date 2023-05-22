//
//  APICaller.swift
//  Movietrending
//
//  Created by BCS on 5/22/23.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}


public class APICaller {
    static func getTrendingMovies(completioHandler: @escaping (_ result: Result<TrendingMovieModel, NetworkError>) -> Void) {
        
        let urlString = NetworkConstant.shared.serverAddress + "trending/all/day?api_key=" + NetworkConstant.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completioHandler(.failure(.urlError))
            return
        }
        
        URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
            if error == nil,
               let data = dataResponse,
               let resultData = try? JSONDecoder().decode(TrendingMovieModel.self, from: data) {
                completioHandler(.success(resultData))
            } else {
                completioHandler(.failure(.canNotParseData))
            }
        }.resume()
    }
}
