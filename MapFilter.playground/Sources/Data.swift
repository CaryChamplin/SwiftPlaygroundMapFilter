import Foundation

public struct Garage: Codable, Identifiable, Equatable, Hashable {
    public var id:         UUID
    public var garageOwner:  String
    
    init() {
        self.id         = UUID.init()
        self.garageOwner  = ""
    }
    
    init(id: UUID, garageOwner: String) {
        self.id         = id
        self.garageOwner  = garageOwner
    }
    
    public static var localGarages: [Garage] = [
        Garage(id: UUID(uuidString: "95A0D1D1-491F-46FE-A51B-80FC5B381D76")!, garageOwner: "Cary's Garage"         ),
        Garage(id: UUID(uuidString: "96A5902E-5408-437C-AF44-16F39DF90C5A")!, garageOwner: "Amy's Master Shop"     ),
        Garage(id: UUID(uuidString: "F64EB5B1-DE87-46CA-A75A-75D7620A4DCE")!, garageOwner: "Scott's Tech Shop"     ),
        Garage(id: UUID(uuidString: "46F64638-EAD2-49F0-A0A6-C1AD047B225B")!, garageOwner: "Maureen's Vintage Cars"),
    ]
}

public struct Vehicle: Codable, Identifiable, Equatable, Hashable {
    public var id:       UUID
    public var make:     String
    public var model:    String
    public var year:     Int
    public var garageID: UUID
    
    init() {
        self.id         = UUID.init()
        self.make       = ""
        self.model      = ""
        self.year       = 2021
        self.garageID   = UUID.init()
    }
    
    init(id: UUID, make: String, model: String, year: Int, garageID: UUID) {
        self.id         = id
        self.make       = make
        self.model      = model
        self.year       = year
        self.garageID   = garageID
    }
    
    public static var vehicles: [Vehicle] = [
        Vehicle(id: UUID.init(), make: "Ford",     model: "Shelby Mustang GT350", year: 1965, garageID: UUID(uuidString: "95A0D1D1-491F-46FE-A51B-80FC5B381D76")!),
        Vehicle(id: UUID.init(), make: "Chevy",    model: "Camaro Z/28",          year: 1967, garageID: UUID(uuidString: "96A5902E-5408-437C-AF44-16F39DF90C5A")!),
        Vehicle(id: UUID.init(), make: "Chevy",    model: "Corvette L88",         year: 1968, garageID: UUID(uuidString: "95A0D1D1-491F-46FE-A51B-80FC5B381D76")!),
        Vehicle(id: UUID.init(), make: "Plymouth", model: "Hemi 'Cuda",           year: 1971, garageID: UUID(uuidString: "46F64638-EAD2-49F0-A0A6-C1AD047B225B")!),
        Vehicle(id: UUID.init(), make: "Pontiac",  model: "GTO",                  year: 1964, garageID: UUID(uuidString: "95A0D1D1-491F-46FE-A51B-80FC5B381D76")!),
        Vehicle(id: UUID.init(), make: "Ford",     model: "Fairlane Thunderbolt", year: 1964, garageID: UUID(uuidString: "46F64638-EAD2-49F0-A0A6-C1AD047B225B")!)
    ]
}

