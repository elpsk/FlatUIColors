//
//  FlatUIColors
//

import XCTest
import FlatUIColors

class Tests: XCTestCase {

    func test_hex_verify() {
        let classicRedHex   = "#FF0000"
        let classicRedColor = UIColor.red
        let retrievedHex    = classicRedColor.hex().uppercased()

        XCTAssertEqual( classicRedHex, retrievedHex )
    }

    func test_hex_without_hash_verify() {
        let classicRedHex   = "FF0000"
        let classicRedColor = UIColor.red
        let retrievedHex    = classicRedColor.hex().uppercased()

        XCTAssert( retrievedHex.contains(classicRedHex) )
    }

    func test_init_with_hex() {
        let classicRedHex   = "#FF0000"
        let classicRedColor = UIColor(hex: classicRedHex)
        XCTAssertNotNil(classicRedColor)

        let createdColorHex = classicRedColor!.hex().uppercased()

        XCTAssertEqual( classicRedColor, UIColor.red )
        XCTAssertEqual( createdColorHex, classicRedHex )
    }
    
    func test_extension_color() {
        let hexFlat = "#16a085".uppercased()
        let hexExtensionFlat = UIColor.flatGreenSea.hex().uppercased()
        
        XCTAssertEqual( hexFlat, hexExtensionFlat )
    }

}
