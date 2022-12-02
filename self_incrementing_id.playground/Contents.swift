import XCTest

class Employee { }

class FooTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test0() {
        XCTFail()
//        // given
//        let sut = Employee()
//
//        // when
//        let arr = [2,1]
//        let result = sut.validMountainArray(arr)
//
//        // then
//        XCTAssertFalse(result)
    }
}

FooTests.defaultTestSuite.run()
