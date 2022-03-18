//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest
import Moya

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
    
    lazy var service = ___VARIABLE_sceneName___ServiceMock()
    lazy var sut = ___VARIABLE_sceneName___Presenter(service: service)
    lazy var presenterSpy = ___VARIABLE_sceneName___PresenterSpy()
    
    func testFetch() throws {
        sut.setDelegate(presenterSpy)
        sut.fetch()
        //test: fetch data
    }
    
    func testError() {
        sut = ___VARIABLE_sceneName___Presenter(service: ___VARIABLE_sceneName___ServiceErrorMock())
        sut.setDelegate(presenterSpy)
        sut.fetch()
        XCTAssertTrue(presenterSpy.error == <#NetworkErrors.generic#>)
    }
}

final class ___VARIABLE_sceneName___ServiceMock: ___VARIABLE_sceneName___ServiceLogic {
    func fetch(completion: @escaping (Result<___VARIABLE_sceneName___Models.Response, <#NetworkErrors#>>) -> Void) {
        let response = ___VARIABLE_sceneName___Models.Response()
        completion(.success(response))
    }
}

final class ___VARIABLE_sceneName___ServiceErrorMock: ___VARIABLE_sceneName___ServiceLogic {
    
    func fetch(completion: @escaping (Result<___VARIABLE_sceneName___Models.Response, <#NetworkErrors#>>) -> Void) {
        completion(.failure(<#NetworkErrors.generic#>))
    }
}

final class ___VARIABLE_sceneName___PresenterSpy: ___VARIABLE_sceneName___PresenterDelegate {
    
    var presentSuccessCalled = false
    var presentErrorCalled = false
    var viewModel: ___VARIABLE_sceneName___Models.ViewModel?
    var error: <#NetworkErrors#>?
    
    func presentSuccess(viewModel: ___VARIABLE_sceneName___Models.ViewModel) {
        presentSuccessCalled = true
        self.viewModel = viewModel
    }
    
    func presentError(_ error: <#NetworkErrors#>) {
        presentErrorCalled = false
        self.error = error
    }
}
