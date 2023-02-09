//
//  AnimeHelper.swift
//  Assignment1
//
//  Created by Vishal Sutar on 2023-02-08.
//

import Foundation
//https://animechan.vercel.app/api/quotes

enum AnimeErrors: Error{
   case unableToCreateURL
}

class AnimeHelper{
   static let urlString = "https://animechan.vercel.app/api/quotes"
   
   static func fetchAnime() async  throws -> Any {
       guard
           let url = URL(string: urlString)
       else{throw AnimeErrors.unableToCreateURL}
       
       let (data, _) = try await URLSession.shared.data(from: url)
       
       let jsonObject = try JSONSerialization.jsonObject(with: data)
       
       return jsonObject
   }
}
