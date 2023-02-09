//
//  FruitHelper.swift
//  Assignment1
//
//  Created by Vishal Sutar on 2023-02-08.
//

import Foundation
//https://fruityvice.com/api/fruit/all
enum FruitErrors: Error{
   case unableToCreateURL
}

class FruitHelper{
   static let urlString = "https://fruityvice.com/api/fruit/all"
   
   static func fetchFruit() async  throws -> Any {
       guard
           let url = URL(string: urlString)
       else{throw FruitErrors.unableToCreateURL}
       
       let (data, _) = try await URLSession.shared.data(from: url)
       
       let jsonObject = try JSONSerialization.jsonObject(with: data)
       
       return jsonObject
   }
}
