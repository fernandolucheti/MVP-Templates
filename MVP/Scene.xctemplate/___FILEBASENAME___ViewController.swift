//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    private lazy var contentView = ___VARIABLE_sceneName___View()
    private var presenter: ___VARIABLE_sceneName___Presenter
    
    
    init(presenter: ___VARIABLE_sceneName___Presenter) {
        self.presenter = presenter
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not supported")
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___PresenterDelegate {
    func presentSuccess(viewModel: ___VARIABLE_sceneName___Models.ViewModel) {
    }
    
    func presentError(_ error: ___VARIABLE_sceneName___Models.ErrorModel) {
    }
}
