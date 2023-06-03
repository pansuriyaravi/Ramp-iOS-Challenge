import Foundation

public struct Metadata: Decodable{
    public let id: String
    public let isPrivate: Bool
    public let createdAt: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case isPrivate = "private"
        case createdAt
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        isPrivate = try container.decode(Bool.self, forKey: .isPrivate)
        
        let dateString = try container.decode(String.self, forKey: .createdAt)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        if let date = dateFormatter.date(from: dateString) {
            createdAt = date
        } else {
            throw DecodingError.dataCorruptedError(
                forKey: .createdAt,
                in: container,
                debugDescription: "Invalid date format"
            )
        }
    }
}
