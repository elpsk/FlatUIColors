//
//  FlatUIColors
//

import UIKit

public extension UIColor {

    convenience init?(hex: String) {
        let hexString: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }

        var color: UInt32 = 0
        scanner.scanHexInt32(&color)

        let mask = 0x000000FF

        let r     = Int(color >> 16) & mask
        let g     = Int(color >> 8) & mask
        let b     = Int(color) & mask

        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0

        self.init(red:red, green:green, blue:blue, alpha:1)
    }
    
    func hex() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }

    static var flatAbsestor     = UIColor(hex: "#7f8c8d")!
    static var flatAlizarin     = UIColor(hex: "#e74c3c")!
    static var flatAmethist     = UIColor(hex: "#9b59b6")!
    static var flatBelizeHole   = UIColor(hex: "#2980b9")!
    static var flatBlueHorizon  = UIColor(hex: "#4b6584")!
    static var flatCarrot       = UIColor(hex: "#e67e22")!
    static var flatClouds       = UIColor(hex: "#ecf0f1")!
    static var flatConcrete     = UIColor(hex: "#95a5a6")!
    static var flatEmerald      = UIColor(hex: "#2ecc71")!
    static var flatFieryFuchsia = UIColor(hex: "#B33771")!
    static var flatFusionRed    = UIColor(hex: "#ff5252")!
    static var flatGreenSea     = UIColor(hex: "#16a085")!
    static var flatGreenland    = UIColor(hex: "#22a6b3")!
    static var flatHoneyGlow    = UIColor(hex: "#EAB543")!
    static var flatLotusPink    = UIColor(hex: "#f368e0")!
    static var flatMidnightBlue = UIColor(hex: "#2c3e50")!
    static var flatNephritis    = UIColor(hex: "#27ae60")!
    static var flatOrange       = UIColor(hex: "#f39c12")!
    static var flatPeterRiver   = UIColor(hex: "#3498db")!
    static var flatPineGlade    = UIColor(hex: "#BDC581")!
    static var flatPomegranate  = UIColor(hex: "#c0392b")!
    static var flatPumkins      = UIColor(hex: "#d35400")!
    static var flatPureApple    = UIColor(hex: "#6ab04c")!
    static var flatReptileGreen = UIColor(hex: "#26de81")!
    static var flatRoyalBlue    = UIColor(hex: "#3867d6")!
    static var flatSilver       = UIColor(hex: "#bdc3c7")!
    static var flatSoaringEagle = UIColor(hex: "#95afc0")!
    static var flatSunFlower    = UIColor(hex: "#f1c40f")!
    static var flatTurquoise    = UIColor(hex: "#1abc9c")!
    static var flatWetAsphalt   = UIColor(hex: "#34495e")!
    static var flatWishteria    = UIColor(hex: "#8e44ad")!

}
