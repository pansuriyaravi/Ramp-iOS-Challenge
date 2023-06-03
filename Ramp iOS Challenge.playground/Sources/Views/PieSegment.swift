import SwiftUI

public struct PieSegment: Shape {
    var start: Angle
    var end: Angle
    
    public init(start: Double, end: Double) {
        self.start = Angle(degrees: start)
        self.end = Angle(degrees: end)
    }

    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.move(to: center)
        path.addArc(center: center, radius: rect.midX, startAngle: start, endAngle: end, clockwise: false)
        return path
    }
}
