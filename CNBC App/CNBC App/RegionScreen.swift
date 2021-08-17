import SwiftUI

struct RegionScreen: View {
    var body: some View {
        ZStack (alignment: .center){
            Rectangle()
                .frame(width: 340, height: 200)
                .foregroundColor(Color(hue: 0.635, saturation: 0.0, brightness: 0.0, opacity: 0.063))
            VStack (alignment: .leading) {
                VStack (alignment: .leading){
                    HStack (spacing: 200) {
                        Text("ASIA")
                            .font(.custom("Roboto-Bold", size: 20))
                            .bold()
                        HStack (spacing: 2){
                            Text("See All")
                                .font(.custom("Roboto-Medium", size: 16))
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.604, saturation: 1.0, brightness: 0.81)/*@END_MENU_TOKEN@*/)
                            Image(systemName: "control")
                                .font(.system(size: 12))
                                .rotationEffect(.degrees(90))
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.604, saturation: 1.0, brightness: 0.81)/*@END_MENU_TOKEN@*/)
                                .offset(y: -1)
                        }
                    }
                    Text("Asia-Pacific markets slip; South Korea's Kakao Bank jumps in debut")
                        .font(.custom("Roboto-Regular", size: 17))
                }
                .padding(3)
                .offset(y: 5)
                Spacer()
                HStack (spacing: 10){
                    IndividualMarket(input: "NIKKEI", value: +0.06, marketValue: "27,744.24*", change: "+16.12")
                    IndividualMarket(input: "SHANGHAI", value: -0.52, marketValue: "3,448.47*", change: "-18.08")
                    IndividualMarket(input: "HSI", value: -0.32, marketValue: "26,121.33*", change: "-83.36")
                }
            }
            
        }
        .frame(width: 340, height: 200)
    }
}

struct IndividualMarket: View {
    var input: String
    var value: Double
    var marketValue: String
    var change: String
    
    var body: some View {
        let sign: String = (value > 0) ? "+" : ""
        ZStack {
            VStack (alignment: .leading){
                ZStack (alignment: .leading) {
                    Rectangle()
                        .frame(width: 100, height: 45)
                        .foregroundColor(.white)
                    VStack (alignment: .leading){
                        Text(input)
                            .bold()
                            .font(.custom("Roboto-Bold", size: 15))
                        Text(marketValue)
                            .fontWeight(.light)
                            .font(.system(size: 13))
                    }
                    .offset(x: 10)
                }
                .frame(width: 100, height: 45)
                ZStack (alignment: .top) {
                    Rectangle()
                            .frame(width: 100, height: 45)
                            .foregroundColor((value > 0) ? Color(hue: 0.427, saturation: 0.749, brightness: 0.565) : Color(hue: 0.001, saturation: 0.637, brightness: 0.737))
                            .offset(y: -7.8)
                    HStack (alignment: .firstTextBaseline, spacing: 5){
                        Image(systemName: "arrowtriangle.up.fill")
                            .resizable()
                            .frame(width: 11, height: 11)
                            .rotationEffect(.degrees(value > 0 ? 0 : 180))
                            .foregroundColor(.white)
                            .offset(x: -5, y: -5)
                            
                        VStack (alignment: .trailing){
                            HStack (spacing: 0){
                                Text("\(change)")
                                    .frame(width: 50)
                            }
                            HStack (spacing: 0) {
                                Text("\(sign)")
                                    .offset(y: -1)
                                Text("\(value, specifier: "%.2f")%")
                            }
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .offset(x: 4, y: -5)
                    }
                }
            }
            Rectangle()
                .frame(width: 100, height: 90)
                .opacity(0)
                .border(Color(hue: 1.0, saturation: 0.0, brightness: 0.731), width: 0.5)
                .offset(y: -4)
                .opacity(0.2)

        }
        
    }
}

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

struct RegionScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegionScreen()
    }
}
