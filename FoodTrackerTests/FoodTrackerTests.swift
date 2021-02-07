//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Pavel Romanishkin on 06.02.21.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
        
    //MARK: Meal Class Tests
    func testMealInitializationSucceeds() {
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 3)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        let largeRatingMeal = Meal.init(name: "LargeRating", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 2)
        XCTAssertNil(emptyStringMeal)
    }
}
