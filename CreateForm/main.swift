import Foundation

func main() {
    let form = U03()
    
    do {
        let jsonData = try JSONEncoder().encode(form)
        let jsonString = String(data: jsonData, encoding: .utf8)!
        print(jsonString)
    } catch { print(error) }
}

main()
