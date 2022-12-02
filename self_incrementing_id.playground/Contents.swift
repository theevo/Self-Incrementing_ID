import XCTest

class Employee {
    var name: String
    var id: Int
    
    init(name: String) {
        self.name = name
        self.id = 0
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
    
    func test_Employee_hadID() {
        let name = "Andor"
        let sut = Employee(name: name)
        
        XCTAssertGreaterThanOrEqual(sut.id, 0)
    }
}

FooTests.defaultTestSuite.run()
