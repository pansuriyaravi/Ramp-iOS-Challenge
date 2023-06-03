import Foundation

/// A utility class for decoding JSON data into a generic model object.
public class JSONUtility {
    /// Decodes the given JSON data into a generic model object.
    ///
    /// - Parameter jsonData: The JSON data to be decoded.
    /// - Returns: An instance of the decoded model object.
    /// - Throws: An error if the decoding process fails.
    public static func decodeData<T: Decodable>(jsonData: Data) throws -> T {
        let decoder = JSONDecoder()
        let model = try decoder.decode(T.self, from: jsonData)
        return model
    }
}

