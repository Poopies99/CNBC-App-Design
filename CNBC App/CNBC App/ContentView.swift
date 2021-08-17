import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 500, height: 500)
                .foregroundColor(Color(hue: 0.635, saturation: 0.104, brightness: 0.873, opacity: 0.427))
            IndividualMarket(input: "NIKKEI", value: 0.06, marketValue: "26,121.33*", change: "16.12")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
