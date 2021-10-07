/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 ## Real-Life Map and Filter Examples
 There are two arrays, located in Data.swift, that define where vehicles are being stored in various garages:
 
 * An array of Garage structs where each Garage consists: id, garageOwner.
 
 * An array of Vehicle structs where each Vehicle consists: id, make, model, year, garageID, and order.
 
 ### Example 1: Determine which garage owners have the following two cars.
 */
code(for: "Garages with two favorite vehicles:") {
    let favVehicleList = [
        "Shelby Mustang GT350",
        "Camaro Z/28"
    ]
    let garageIDwithFavVehicles = Vehicle.vehicles.filter( {favVehicleList.contains($0.model) } ).map { $0.garageID }
    let garageOwners = Garage.localGarages.filter( {garageIDwithFavVehicles.contains($0.id) } ).map { $0.garageOwner }
    for garage in garageOwners {
        Special.padPrint(garage)
    }
}
/*:
 ### Example 2: Determine which of the available garages have vehicles.
 */
code(for: "Garages with vehicles:") {
    let garageIDs = Vehicle.vehicles.map { $0.garageID }.removeDuplicates()
    let garagesWithVehicles = Garage.localGarages.filter( { garageIDs.contains($0.id) } )
    for garage in garagesWithVehicles {
        Special.padPrint(garage.garageOwner)
    }
}
/*:
 ### Example 3: Persist order of vehicles as modified by a user using SwiftUI List.
 Re-ordering arrays and deleting an entry are some of the cool features about using List in SwiftUI. For this scenario,
 
 an array is retrieved from a database, shown to the user as items in a SwiftUI List, re-ordered by the user, and
 
 then saved back to the DB. Several potential issues may occur in this scenario that include:

 * order may not be correct on next retrieval
 
 * extra items may remain in the DB if any items in the array are deleted

 One method of persisting item order is to capture the updated array index as a parameter in each item when
 
 the array is being saved. For this example, the Vehicle struct's parameter 'order' is used to capture the
 
 updated index order of its array.
 */
code(for: "Persist array order:") {
    print("Sort Vehicle array retrieved from DB by item order")
    let sortedVehicles = Vehicle.vehicles.sorted { $0.order < $1.order }
    for vehicle in sortedVehicles {
        Special.padPrint(vehicle.model, vehicle.order)
    }
    print("\nSave index to 'order' for each item in array")
    let reorderedVehicles = Vehicle.vehicles.enumerated().map { (index, item) -> Vehicle in
        var localVehicle: Vehicle = item
        localVehicle.order = index
        return localVehicle
    }
    for vehicle in reorderedVehicles {
        Special.padPrint(vehicle.model, vehicle.order)
    }
}
/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
