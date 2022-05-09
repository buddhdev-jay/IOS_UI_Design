//
//  IOS_UI_DesignUITestsLaunchTests.swift
//  IOS_UI_DesignUITests
//
//  Created by Jay Buddhdev on 30/04/22.
//

import XCTest

class IOS_UI_DesignUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()
        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
