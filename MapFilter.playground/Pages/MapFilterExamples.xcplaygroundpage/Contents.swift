/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 ## Real-Life Map and Filter Examples
 There are two arrays, located in Data.swift, that define where vehicles are being stored in various garages:
 
 * An array of Garage structs where each Garage consists: id, garageOwner.
 
 * An array of Vehicle structs where each Vehicle consists: id, make, model, year, and garageID.
 
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
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
