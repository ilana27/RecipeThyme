//
//  Data.swift
//  RecipeThyme
//
//  Created by Ilana Nguyen on 4/18/21.
//

import Foundation


class Api {
    func getRecipes() {
let headers = [
    "x-rapidapi-key": "3d05060d52msh7a7bde374a0a222p143e18jsn88a106ac4c93",
    "x-rapidapi-host": "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/findByIngredients?ingredients=beans%2Cpasta%2Crice%2Clentils%2Ccanned&ranking=2&ignorePantry=true")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
    if (error != nil) {
        print(error)
    } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse)
    }
})

dataTask.resume()
}
}
