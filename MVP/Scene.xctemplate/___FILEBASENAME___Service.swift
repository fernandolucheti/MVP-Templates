//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Moya

protocol ___VARIABLE_sceneName___ServiceLogic {
    func fetch(request: ___VARIABLE_sceneName___Models.Request, completion: @escaping (Result<___VARIABLE_sceneName___Models.Response, ___VARIABLE_sceneName___Models.ErrorModel>) -> Void)
}

class ___VARIABLE_sceneName___Service: ___VARIABLE_sceneName___ServiceLogic {
    
    var provider: MoyaProvider<<#NetworkRequests#>>
    
    init(provider: MoyaProvider<<#NetworkRequests#>>) {
        self.provider = provider
    }
    
    func fetch(request: ___VARIABLE_sceneName___Models.Request, completion: @escaping (Result<___VARIABLE_sceneName___Models.Response, ___VARIABLE_sceneName___Models.ErrorModel>) -> Void) {
        provider.request(<#T##NetworkRequest#>) { result in
            switch result {
            case.success(let response):
                do {
                    let responseModel = try response.map(___VARIABLE_sceneName___Models.Response.self)
                    completion(.success(responseModel))
                } catch {
                    completion(.failure(<#T##NetworkErrors.decoding#>))
                }
            case .failure:
                completion(.failure(<#T##NetworkErrors.generic#>))
            }
        }
    }
}
