import XCTest
import UIButtonX
import Quick
import Nimble

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            // Put the code you want to measure the time of here.
        }
    }
    
}

//class UIButtonX_Specification: QuickSpec {
//    
//    override func spec() {
//        
//        describe("given a button titled 'button'") {
//            
//            let containerView: UIView = UIView()
//            
//            let button: UIButtonX! = UIButtonX()
//            button.setTitle("button", forState: .normal)
//            button.addTarget(listener, #selector(buttonDismissed), forEvent: .dismissed)
//            
//            containerView.addSubview(button)
//            
//            context("when its 'x' button is pressed") {
//                
//                // programmatically press its x button
//                button.dismiss()
//                
//                it("notifies when it about to disppears") {
//                    expect( listener.buttonDissmissedCalled ).to(true)
//                }
//                
//                it("disappears") {
//                    expect(button ).to(beNil())
//                }
//            }
//        }
//    }
//}

