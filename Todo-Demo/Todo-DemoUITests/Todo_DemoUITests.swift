//

//  Todo_Demo2UITests.swift

//  Todo-Demo2UITests

//

//  Created by macuser on 2022-11-01.

//



import XCTest



class Todo_DemoUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    
    
    override func setUpWithError() throws {
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        
        continueAfterFailure = false
        
        app.launch()
        
        
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        
        
        while (app.tables.cells.count != 0) {
            
            let itemDeleteButton = app.buttons["ListItemDeleteButton"].firstMatch
            
            itemDeleteButton.tap()
            
        }
        
    }
    
    
    
    override func tearDownWithError() throws {
        
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        
        
        while (app.tables.cells.count != 0) {
            
            let itemDeleteButton = app.buttons["ListItemDeleteButton"].firstMatch
            
            itemDeleteButton.tap()
            
        }
        
    }
    
    func testLaunchPerformance() throws {
        
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            
            // This measures how long it takes to launch your application.
            
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                
                XCUIApplication().launch()
                
            }
            
        }
        
    }
    
}

//

//  Todo_Demo2UITests.swift

//  Todo-Demo2UITests

//

//  Created by macuser on 2022-11-01.

//



import XCTest



class Todo_Demo2UITests: XCTestCase {
    
    
    
    let app = XCUIApplication()
    
    
    
    override func setUpWithError() throws {
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        
        continueAfterFailure = false
        
        app.launch()
        
        
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
        
        
        while (app.tables.cells.count != 0) {
            
            let itemDeleteButton = app.buttons["ListItemDeleteButton"].firstMatch
            
            itemDeleteButton.tap()
            
        }
        
    }
    
    
    
    override func tearDownWithError() throws {
        
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        while (app.tables.cells.count != 0) {
            
            let itemDeleteButton = app.buttons["ListItemDeleteButton"].firstMatch
            
            itemDeleteButton.tap()
            
        }
        
    }
 
    func test_AddTodoItem_ShouldSucceed_2() {
        
        let title = "Buy Mom 10 Christmas Gifts"
        let titleField = app.textFields["EnterTitleTextField"]
        
        titleField.tap()
        titleField.typeText(title)
        
        let notesField = app.textFields["EnterNotesTextField"]
        
        notesField.tap()
        notesField.typeText("This is a note")
        
        let initialRowCount = app.tables.cells.count
        
        app.buttons["AddTodoItemButton"].tap()
        
        let finalRowCount = app.tables.cells.count
        let newTodo = app.staticTexts["\(title)"].firstMatch
        let newTodoText = newTodo.label
        
        XCTAssertTrue(initialRowCount == finalRowCount)
        XCTAssertEqual(newTodoText, title)
        
        
    }
    
    func test_UpdateTodoItem_ShouldSucceed() {
        let editText = "edited"
        let title = "Buy Mom 10 Christmas Gifts"
        let titleField = app.textFields["EnterTitleTextField"]
        
        titleField.tap()
        titleField.typeText(title)
        
        let notesField = app.textFields["EnterNotesTextField"]
        
        notesField.tap()
        notesField.typeText("This is a note")
        
        var initialRowCount = app.tables.cells.count
        
        app.buttons["AddTodoItemButton"].tap()
        
        let finalRowCount = app.tables.cells.count
        let newTodo = app.staticTexts["\(title)"].firstMatch
        let newTodoText = newTodo.label
        
        app.buttons["ListItemEditButton"].firstMatch.tap()
        titleField.tap()
        titleField.typeText(editText)
        notesField.tap()
        notesField.typeText(editText)
        app.buttons["EditTodoItemButton"].tap()
        
        XCTAssertTrue(initialRowCount == finalRowCount)
        XCTAssertEqual(newTodoText, title)
    }
    
    
    
    func test_ClickInList() {
        
        
        
        XCUIApplication().tables.cells["Call phone company Updated, Edit, Trash"].children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
        
    }
    
    
    
    func testLaunchPerformance() throws {
        
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            
            // This measures how long it takes to launch your application.
            
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                
                XCUIApplication().launch()
                
            }
            
        }
        
    }
    
}
