//
//  SplashScreenPresenterTests.swift
//  dota
//
//  Created by Muhammad Ilham Ramadhan on 27/07/21.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import dota
import XCTest

class SplashScreenPresenterTests: XCTestCase {
    // MARK: Subject under test
    class SplashScreenViewControllerMock: SplashScreenDisplayLogic {
        var successLoadDataCalled = false
        var errorLoadDataCalled = false
        
        func successLoadData() {
            successLoadDataCalled = true
        }
        
        func errorLoadData() {
            errorLoadDataCalled = true
        }
    }
    
    var presenter: SplashScreenPresenter!
    var viewController: SplashScreenViewControllerMock!
    
    // MARK: Test lifecycle
    
    override func setUp() {
        super.setUp()
        presenter = SplashScreenPresenter()
        viewController = SplashScreenViewControllerMock()
        presenter.viewController = viewController
    }
    
    override func tearDown() {
        presenter = nil
        viewController = nil
        super.tearDown()
    }
    // MARK: Tests
    
    func testSuccesssLoadData() {
        //when
        presenter.presentSuccessLoadingData()
        
        //then
        XCTAssert(viewController.successLoadDataCalled, "success load data should be called")
    }
    
    func testErrorLoadData() {
        //when
        presenter.presentErrorLoadData()
        
        //then
        XCTAssert(viewController.errorLoadDataCalled, "error load data should be called")
    }
}
