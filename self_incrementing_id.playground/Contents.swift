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
    
    func test_Employee_id_isUnique() {
        let name1 = "Andor"
        let sut1 = Employee(name: name1)
        
        let name2 = "Marva"
        let sut2 = Employee(name: name2)
        
        XCTAssertNotEqual(sut1.id, sut2.id, "These employees have the same ID! \(sut1.name) and \(sut2.name) both have ID = \(sut1.id)")
    }
}

FooTests.defaultTestSuite.run()
