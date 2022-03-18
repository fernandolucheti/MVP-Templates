//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

@testable import ___PROJECTNAMEASIDENTIFIER___
import XCTest

class ___VARIABLE_sceneName___ServiceTests: XCTestCase {
    
    lazy var provider = MoyaProvider<<#NetworkRequests#>>(stubClosure: MoyaProvider.immediatelyStub)
    lazy var sut = ___VARIABLE_sceneName___Service(provider: provider)
    
    func testFetch() {
        
        sut.fetch { result in
            switch result {
            case .success(let response):
                // assert response
            case .failure:
                XCTFail()
            }
        }
    }
}
