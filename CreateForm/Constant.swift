import Foundation

struct Choices {
    static let normal = ["1": "Normal", "2": "Abnormal", "3": "N/A"]
    static let yes = ["1": "Yes", "2": "No"]
    static let twoOptionsOkFailed = ["1": "OK", "2": "Fail"]
    static let threeOptionsOkFailed = ["1": "OK", "2": "Fail", "3": "N/A"]
    static let threeOptionsOkNotOk = ["1": "OK", "2": "Not OK", "3": "N/A"]
    static let agree = ["1": "agreed", "2": "Not agreed"]
}

enum Unit: String {
    case celsius = "°C"
    case percent = "%"
    case pressure = "Psi"
    case volt = "V"
    case ampere = "A"
    case hertz = "Hz"
    case hour = "hr"
    case minute = "min"
    case kilovoltAmps = "kVA"
    case kilovolt = "kW"
    case ohm = "Ω"
    case bar = "Psig/Bar"
    case flowRate = "I/s"
    
    case none = ""
}
