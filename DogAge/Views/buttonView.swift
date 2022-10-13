//
//  buttonView.swift
//  DogAge
//
//  Created by Jacob Conacher on 10/12/22.
//

import Foundation

class buttonView: ObservableObject {
    
    @Published var dogAgeText = ""
    @Published var humanAgeText = ""
    
    @Published var errorMessage = ""
    @Published var showAlert = false
    
    func compute() {
        
        guard let dogAge = Double(dogAgeText) else {
            errorMessage = "Please enter a valid age for your dog"
            showAlert = true
            return
        }
        
        var result: Double
        result = 16 * log(dogAge) + 31
        result.round()
        
        humanAgeText = "In human years, your dog is \(String(format:"%.0f", result))"
        
    }
}
