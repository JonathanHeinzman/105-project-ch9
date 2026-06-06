//
//  SpecialistModel.swift
//  105 project ch9
//
//  Created by Jonathan Heinzman on 6/6/26.
//

class Specialist {
    
    // Properties
    var name: String
    var specialty: String
    var minPrice: Double // 299.99
    var maxPrice: Double
    var rating: Double
    var image: String
    
    // Initializer
    init(name: String, specialty: String, minPrice: Double, maxPrice: Double, rating: Double, image: String){
        self.name = name
        self.specialty = specialty
        self.minPrice = minPrice
        self.maxPrice = maxPrice
        self.rating = rating
        self.image = image
    }
}

