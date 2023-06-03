import Foundation

/// A utility class for making network requests and decoding JSON data into model objects.
public class NetworkUtility{
    private let ACCESS_KEY: String
    
    /// Initializes a `NetworkUtility` instance with the specified API key.
    ///
    /// - Parameter apiKey: The API key to be used for authentication.
    public init(apiKey: String) {
        self.ACCESS_KEY = apiKey
    }
    
    /// Sends a request to the specified endpoint and returns the received data.
    ///
    /// - Parameters:
    ///   - endpoint: The URL endpoint to send the request to.
    /// - Returns: The received data as `Data`.
    /// - Throws: An error if the request fails or the response is invalid.
    public func requestData(endpoint: String) async throws -> Data{
        guard let url = URL(string: endpoint) else {
            throw NetworkError.invalidURL
        }
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(ACCESS_KEY, forHTTPHeaderField: "X-ACCESS-KEY")
        
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse
        else {
            throw NetworkError.invalidResponse
        }
        debugPrint(httpResponse.statusCode)
        return data
    }
    
    /// Sends a request to the specified endpoint and decodes the received data into a model object of type `T`.
    ///
    /// - Parameters:
    ///   - endpoint: The URL endpoint to send the request to.
    /// - Returns: An instance of the decoded model object.
    /// - Throws: An error if the request fails, the response is invalid, or the decoding process fails.
    public func request<T:Decodable>(endpoint: String) async throws -> T {
        let data = try await requestData(endpoint: endpoint)
        let model: T = try JSONUtility.decodeData(jsonData: data)
        return model
    }
}
