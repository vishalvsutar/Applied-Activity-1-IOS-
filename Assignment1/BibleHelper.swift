//
//  BibleHelper.swift
//  Assignment1
//
//  Created by Vishal Sutar on 2023-02-08.
//

import Foundation
//https://bible-api.com/John+3:16?translation=web
enum BibleErrors: Error{
   case unableToCreateURL
}

class BibleHelper{
   static let urlString = "https://bible-api.com/John+3:16?translation=web"
   
   static func fetchBible() async  throws -> Any {
       guard
           let url = URL(string: urlString)
       else{throw BibleErrors.unableToCreateURL}
       
       let (data, _) = try await URLSession.shared.data(from: url)
       
       let jsonObject = try JSONSerialization.jsonObject(with: data)
       
       return jsonObject
   }
}
