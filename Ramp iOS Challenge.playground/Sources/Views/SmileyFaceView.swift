import SwiftUI

public struct SmileyFaceView: View {
    
    public init() {}
    
    public var body: some View {
        ZStack(alignment: .top) {
            Circle()
                .trim(from: 0, to: 0.5)
                .fill(Color.red.opacity(0.8))
            
            HStack {
                Circle()
                    .frame(width: 100)
                Spacer()
            }

            HStack {
                Spacer()
                PieSegment(start: 0, end: 90)
                    .frame(width: 200, height: 200)
            }
            .offset(y: -100)
        }
        .foregroundColor(.black.opacity(0.8))
        .frame(width: 300, height: 300)
    }
}
