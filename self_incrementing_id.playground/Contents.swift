import XCTest

class Employee {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class FooTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_Employee_hasName() {
        // given
        let name = "Andor"
        let sut = Employee(name: name)

        // when

        // then
        XCTAssertEqual(sut.name, name)
    }
}

FooTests.defaultTestSuite.run()
