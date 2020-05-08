//
//  FlatUIColors
//

import UIKit

extension UIColor {

    public convenience init?(hex: String) {
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
    
    public func hex() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }

    static public var flatAbsestor     = UIColor(hex: "#7f8c8d")!
    static public var flatAlizarin     = UIColor(hex: "#e74c3c")!
    static public var flatAmethist     = UIColor(hex: "#9b59b6")!
    static public var flatBelizeHole   = UIColor(hex: "#2980b9")!
    static public var flatBlueHorizon  = UIColor(hex: "#4b6584")!
    static public var flatCarrot       = UIColor(hex: "#e67e22")!
    static public var flatClouds       = UIColor(hex: "#ecf0f1")!
    static public var flatConcrete     = UIColor(hex: "#95a5a6")!
    static public var flatEmerald      = UIColor(hex: "#2ecc71")!
    static public var flatFieryFuchsia = UIColor(hex: "#B33771")!
    static public var flatFusionRed    = UIColor(hex: "#ff5252")!
    static public var flatGreenSea     = UIColor(hex: "#16a085")!
    static public var flatGreenland    = UIColor(hex: "#22a6b3")!
    static public var flatHoneyGlow    = UIColor(hex: "#EAB543")!
    static public var flatLotusPink    = UIColor(hex: "#f368e0")!
    static public var flatMidnightBlue = UIColor(hex: "#2c3e50")!
    static public var flatNephritis    = UIColor(hex: "#27ae60")!
    static public var flatOrange       = UIColor(hex: "#f39c12")!
    static public var flatPeterRiver   = UIColor(hex: "#3498db")!
    static public var flatPineGlade    = UIColor(hex: "#BDC581")!
    static public var flatPomegranate  = UIColor(hex: "#c0392b")!
    static public var flatPumkins      = UIColor(hex: "#d35400")!
    static public var flatPureApple    = UIColor(hex: "#6ab04c")!
    static public var flatReptileGreen = UIColor(hex: "#26de81")!
    static public var flatRoyalBlue    = UIColor(hex: "#3867d6")!
    static public var flatSilver       = UIColor(hex: "#bdc3c7")!
    static public var flatSoaringEagle = UIColor(hex: "#95afc0")!
    static public var flatSunFlower    = UIColor(hex: "#f1c40f")!
    static public var flatTurquoise    = UIColor(hex: "#1abc9c")!
    static public var flatWetAsphalt   = UIColor(hex: "#34495e")!
    static public var flatWishteria    = UIColor(hex: "#8e44ad")!

}
