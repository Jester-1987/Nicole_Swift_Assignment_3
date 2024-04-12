// superclass
class Ship {
    let name: String
    let year: Int
    let countryOfOrigin: String
    
    init (name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

// subclasses - there may have been a shorter way of doing this, but this is the way that makes sense to me.

class CruiseShip: Ship {
    let maxCapacity: Int
    let oceanOfOperation: String
    var currentPassengerCount: Int
    
    init(name: String, year: Int, countryOfOrigin: String, oceanOfOperation: String, maxCapacity: Int, currentPassengerCount: Int) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        self.currentPassengerCount = currentPassengerCount
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
}
        
class CargoShip: Ship {
    let maxCargoCapacity: Int
    var currentCargoCount: Int
    var isInternational: Bool
    
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, currentCargoCount: Int) {
        self.maxCargoCapacity = maxCargoCapacity
        self.currentCargoCount = currentCargoCount
        self.isInternational = true
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
}
    
class PirateShip: Ship {
    let maxTreasureCapacity: Int
    var currentTreasureCount: Int
    let numberOfCannons: Int
    
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, currentTreasureCount: Int, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.currentTreasureCount = currentTreasureCount
        self.numberOfCannons = numberOfCannons
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addTreasure(amount: Int) {
        if self.currentTreasureCount + amount <= self.maxTreasureCapacity {
            self.currentTreasureCount += amount
            print("Doubleoons be added to the trove. Current treasure be at: \(self.currentTreasureCount)")
        } else {
            print("Yar, the ship can't hold more booty. I'll put it in me pocket instead...")
        }
    }
}

// using a name that should hopefully be less confusing than just using a lowercase letter to start
let jollyRoger = PirateShip(name: "The Crimson Fury", year: 1737, countryOfOrigin: "England", maxTreasureCapacity: 1, currentTreasureCount: 3, numberOfCannons: 10)

//printing properties
print("""
      The name of the ship was the \(jollyRoger.name).
      She was built in \(jollyRoger.countryOfOrigin) in the year \(jollyRoger.year).
      The ship had an arsenal of \(jollyRoger.numberOfCannons) cannons.
""")


func printTreasureCount() {
    print(jollyRoger.currentTreasureCount)
}
//I can't figure out why it isn't printing the currentTreasureCount
