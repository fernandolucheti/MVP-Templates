//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_sceneName___PresenterDelegate : AnyObject {
    func presentSuccess(viewModel: ___VARIABLE_sceneName___Models.ViewModel)
    func presentError(_ error: ___VARIABLE_sceneName___Models.ErrorModel)
}

final class ___VARIABLE_sceneName___Presenter {
    private weak var delegate: ___VARIABLE_sceneName___PresenterDelegate?
    private var service: ___VARIABLE_sceneName___ServiceLogic
    
    init(service: ___VARIABLE_sceneName___ServiceLogic) {
        self.service = service
    }
    
    func setDelegate(_ delegate: ___VARIABLE_sceneName___PresenterDelegate) {
        self.delegate = delegate
    }
    
    func fetch() {
        service.fetch { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let response):
                self.delegate?.presentSuccess(viewModel: self.createViewModel(response))
            case .failure(let error):
                self.delegate?.presentError(error)
            }
        }
    }
    
    private func createViewModel(_ response: ___VARIABLE_sceneName___Models.Response) -> ___VARIABLE_sceneName___Models.ViewModel {
        ___VARIABLE_sceneName___Models.ViewModel()
    }
}
