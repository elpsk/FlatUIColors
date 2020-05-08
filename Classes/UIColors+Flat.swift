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

    static var flatAbsestor     = UIColor(named: "FlatAbsestor")!
    static var flatAlizarin     = UIColor(named: "FlatAlizarin")!
    static var flatAmethist     = UIColor(named: "FlatAmethist")!
    static var flatBelizeHole   = UIColor(named: "FlatBelizeHole")!
    static var flatBlueHorizon  = UIColor(named: "FlatBlueHorizon")!
    static var flatCarrot       = UIColor(named: "FlatCarrot")!
    static var flatClouds       = UIColor(named: "FlatClouds")!
    static var flatConcrete     = UIColor(named: "FlatConcrete")!
    static var flatEmerald      = UIColor(named: "FlatEmerald")!
    static var flatFieryFuchsia = UIColor(named: "FlatFieryFuchsia")!
    static var flatFusionRed    = UIColor(named: "FlatFusionRed")!
    static var flatGreenSea     = UIColor(named: "FlatGreenSea")!
    static var flatGreenland    = UIColor(named: "FlatGreenland")!
    static var flatHoneyGlow    = UIColor(named: "FlatHoneyGlow")!
    static var flatLotusPink    = UIColor(named: "FlatLotusPink")!
    static var flatMidnightBlue = UIColor(named: "FlatMidnightBlue")!
    static var flatNephritis    = UIColor(named: "FlatNephritis")!
    static var flatOrange       = UIColor(named: "FlatOrange")!
    static var flatPeterRiver   = UIColor(named: "FlatPeterRiver")!
    static var flatPineGlade    = UIColor(named: "FlatPineGlade")!
    static var flatPomegranate  = UIColor(named: "FlatPomegranate")!
    static var flatPumkins      = UIColor(named: "FlatPumkins")!
    static var flatPureApple    = UIColor(named: "FlatPureApple")!
    static var flatReptileGreen = UIColor(named: "FlatReptileGreen")!
    static var flatRoyalBlue    = UIColor(named: "FlatRoyalBlue")!
    static var flatSilver       = UIColor(named: "FlatSilver")!
    static var flatSoaringEagle = UIColor(named: "FlatSoaringEagle")!
    static var flatSunFlower    = UIColor(named: "FlatSunFlower")!
    static var flatTurquoise    = UIColor(named: "FlatTurquoise")!
    static var flatWetAsphalt   = UIColor(named: "FlatWetAsphalt")!
    static var flatWishteria    = UIColor(named: "FlatWishteria")!
    
}
