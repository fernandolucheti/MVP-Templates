//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import Moya

final class ___VARIABLE_sceneName___Factory {
    static func createViewController() -> UIViewController {
        let provider = MoyaProvider<<#NetworkRequests#>>()
        let service = ___VARIABLE_sceneName___Service(provider: provider)
        let presenter = ___VARIABLE_sceneName___Presenter(service: service)
        let viewController = ___VARIABLE_sceneName___ViewController(presenter: presenter)
        presenter.setDelegate(viewController)
        return viewController
    }
}
