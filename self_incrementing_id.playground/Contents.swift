import XCTest

class Employee {
    static var uniqueId: Int = 0
    
    static var nextId: Int {
        defer { uniqueId += 1 }
        return uniqueId
    }
    
    var name: String
    var id: Int
    
    init(name: String) {
        self.name = name
        self.id = Employee.nextId
    }
}

extension Employee: CustomStringConvertible {
    var description: String {
        "\(id). \(name)"
    }
}

class EmployeeTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_Employee_hasName() {
        let name = "Andor"
        let sut = Employee(name: name)

        XCTAssertEqual(sut.name, name)
    }
    
    func test_Employee_hadID() {
        let name = "Andor"
        let sut = Employee(name: name)
        
        XCTAssertGreaterThanOrEqual(sut.id, 0)
    }
    
    func test_Employee_id_isUnique() {
        let employees = EmployeeMock.buildEmployees()
        
        let employeesIds = employees.map { employee in
            employee.id
        }
        
        let employeeIdsSet: Set<Int> = Set(employeesIds)
        
        XCTAssertEqual(employees.count, employeeIdsSet.count)
    }
}

struct EmployeeMock {
    static private let names: [String] = [
        "Cassian Andor",
        "Luthen Rael",
        "Mon Mothma",
        "Bix Caleen",
        "Syril Karn",
        "Saw Gerrera",
        "Dedra Meero",
        "Maarva Andor",
        "Karis Nemik",
        "Kleya Marki",
        "Kino Loy",
    ]
    
    static func buildEmployees() -> [Employee] {
        names.map { name in
            Employee(name: name)
        }
    }
}

EmployeeTests.defaultTestSuite.run()
