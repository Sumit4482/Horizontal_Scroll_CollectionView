//
//  Horizontal_Scroll_CollectionViewUITestsLaunchTests.swift
//  Horizontal_Scroll_CollectionViewUITests
//
//  Created by E5000855 on 06/06/24.
//

import XCTest

final class Horizontal_Scroll_CollectionViewUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
