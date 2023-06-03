import Foundation

/// Enum representing network errors that can occur during network operations.
public enum NetworkError: LocalizedError{
    /// Error case for an invalid URL.
    case invalidURL
    
    /// Error case for an invalid response.
    case invalidResponse
    
    /// A localized description of the error.
    public var errorDescription: String?{
        switch self {
        case .invalidURL:
            return NSLocalizedString("Invalid url!", comment: "NetworkError badURL label")
        case .invalidResponse:
            return NSLocalizedString("Invalid Response!", comment: "NetworkError badResponse label")
        }
    }
}
