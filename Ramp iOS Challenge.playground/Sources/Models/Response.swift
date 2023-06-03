import Foundation

public struct Response: Decodable{
    public let record: Record
    public let metadata: Metadata
}
