import Foundation

public class Challange2 {
    private let ACCESS_KEY = "$2b$10$Ke1iwieFO7/7qsSKU.GYU.oYXZMW1EeHrwd4xx9ylboJik5mstZk6"
    private let endpoint = "https://api.jsonbin.io/v3/b/646bed328e4aa6225ea22a79"
    private let networkUtility: NetworkUtility
    
    public init() {
        self.networkUtility = NetworkUtility(apiKey: ACCESS_KEY)
    }
    
    public func propmt() -> String?{
        var result: String? = nil
        
        result = UnsafeTask {
            await self.propmtAsync()
        }
        .get()
        
        // Return the result from the completed task
        return result
    }
    
    private func propmtAsync() async -> String?{
        do{
            let response: Response = try await networkUtility.request(endpoint: endpoint)
            let records = response.record.data
            let sortedRecords = records.sorted(by: { $0.bar < $1.bar})
            let filterdRecords = sortedRecords.filter({ $0.baz % 3 == 0 })
            let concatenatedString = filterdRecords.reduce("") { result, element in
                return result + element.foo
            }
            return concatenatedString
        }
        catch {
            debugPrint(error.localizedDescription)
            return nil
        }
    }
}
