//
//  FlatUIColors
//

import UIKit
import FlatUIColors // <--- import the color framework

class ViewController: UIViewController {

    @IBOutlet weak private var btnStart: UIButton!
    @IBOutlet weak private var lblColorName: UILabel!
    @IBOutlet weak private var lblColorHex: UILabel!
    @IBOutlet weak private var btnBottomConstraint: NSLayoutConstraint!
    
    private let allColors: [(name: String, color: UIColor)] = [
        ("flatAbsestor",        UIColor.flatAbsestor),
        ("flatAlizarin",        UIColor.flatAlizarin),
        ("flatAmethist",        UIColor.flatAmethist),
        ("flatBelizeHole",      UIColor.flatBelizeHole),
        ("flatBlueHorizon",     UIColor.flatBlueHorizon),
        ("flatCarrot",          UIColor.flatCarrot),
        ("flatClouds",          UIColor.flatClouds),
        ("flatConcrete",        UIColor.flatConcrete),
        ("flatEmerald",         UIColor.flatEmerald),
        ("flatFieryFuchsia",    UIColor.flatFieryFuchsia),
        ("flatFusionRed",       UIColor.flatFusionRed),
        ("flatGreenSea",        UIColor.flatGreenSea),
        ("flatGreenland",       UIColor.flatGreenland),
        ("flatHoneyGlow",       UIColor.flatHoneyGlow),
        ("flatLotusPink",       UIColor.flatLotusPink),
        ("flatMidnightBlue",    UIColor.flatMidnightBlue),
        ("flatNephritis",       UIColor.flatNephritis),
        ("flatOrange",          UIColor.flatOrange),
        ("flatPeterRiver",      UIColor.flatPeterRiver),
        ("flatPineGlade",       UIColor.flatPineGlade),
        ("flatPomegranate",     UIColor.flatPomegranate),
        ("flatPumkins",         UIColor.flatPumkins),
        ("flatPureApple",       UIColor.flatPureApple),
        ("flatReptileGreen",    UIColor.flatReptileGreen),
        ("flatRoyalBlue",       UIColor.flatRoyalBlue),
        ("flatSilver",          UIColor.flatSilver),
        ("flatSoaringEagle",    UIColor.flatSoaringEagle),
        ("flatSunFlower",       UIColor.flatSunFlower),
        ("flatTurquoise",       UIColor.flatTurquoise),
        ("flatWetAsphalt",      UIColor.flatWetAsphalt),
        ("flatWishteri",        UIColor.flatWishteria)
    ]
    
    // ---------------------------------------------------------------------------------------------

    private func layoutInformations( currentColor: (name: String, color: UIColor) ) {
        DispatchQueue.main.async {
            self.lblColorName.text = currentColor.name
            self.lblColorHex.text  = currentColor.color.hex().uppercased()
        }
    }

    @IBAction func didColorChangePressed(_ sender: Any) {
        self.btnStart.isHidden = true
        self.btnBottomConstraint.constant = 20
        self.updateViewConstraints()

        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { t in
            let currentColor = self.allColors.randomElement()!
            self.view.backgroundColor = currentColor.color
            self.layoutInformations(currentColor: currentColor)
        }
    }

}

