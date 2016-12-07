import XCTest
@testable import VaporGNUTerryPratchett
import Vapor
import HTTP


class VaporGNUTerryPratchettTests: XCTestCase {
  static var allTests : [(String, (VaporGNUTerryPratchettTests) -> () throws -> Void)] {
    return [
      ("testHeader", testHeader),
    ]
  }

  func testHeader() {
    do {
      let drop = Droplet()
      try drop.addProvider(VaporGNUTerryPratchett.Provider.self)
      drop.get { _ in
        return "Goodbye, world"
      }
      let request = try Request(method: .get, uri: "/")
      let response = try drop.respond(to: request)
      XCTAssertEqual(response.headers["X-Clacks-Overhead"], "GNU Terry Pratchett")
    } catch {
      XCTFail(error.localizedDescription)
    }
  }

}
