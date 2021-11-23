//
//  WebService.swift
//  ProjectNASA
//
//  Created by Adonis Rumbwere on 19/11/2021.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    struct Constants {
        static let NASAUrl =  URL(string: "https://images-api.nasa.gov/search?q=%22%22")
    }
    
    private init() {}
    
    public func getNASAImageData(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = Constants.NASAUrl else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            
            else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let result = try decoder.decode(APIResponse.self, from: data)
                    
                    DispatchQueue.main.async {
                        print("Images Count: \(result.collection.items?.count)")
                        //completion(.success())
                    }
                    
                    
                }
                catch {
                    completion(.failure(error))
            }
        }
    }
        
    task.resume()
        
   }
}
    
   


