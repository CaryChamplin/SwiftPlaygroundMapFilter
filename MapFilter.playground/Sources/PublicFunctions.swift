import Foundation

public func code(for title: String, sampleCode: () -> Void) {
print("""
_____________________________
Results for: '\(title)'
_____________________________
""")
  sampleCode()
}


public extension String {
    func paddedBy(length: Int) -> String {
        self.padding(toLength: length, withPad: " ", startingAt: 0)
    }
}

public enum Special {
    public static func padPrint(_ items: Any..., padding:Int = 24 ) {
        var textToPrint = ""
        for item in items {
            textToPrint += "\(item)".paddedBy(length: padding)
        }
        print(textToPrint)
    }
}

extension Array where Element: Hashable {
    public func removeDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()

        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }
}
