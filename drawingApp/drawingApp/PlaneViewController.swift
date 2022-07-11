//
//  PlaneViewController.swift
//  drawingApp
//
//  Created by dale on 2022/07/11.
//

import UIKit
import SnapKit

class PlaneViewController: UIViewController {

    private var viewModel = PlaneViewModel()

    private lazy var addButton: UIButton = {
        var configuration = UIButton.Configuration.gray()
        configuration.image = UIImage(systemName: "square")
        configuration.title = "사각형"
        configuration.imagePlacement = .top
        configuration.imagePadding = 8
        configuration.contentInsets = .init(top: 16, leading: 48, bottom: 16, trailing: 48)
        configuration.baseForegroundColor = .black
        let button = UIButton(configuration: configuration, primaryAction: nil)
        button.contentMode = .center
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        layoutAddButton()
    }
}

// MARK: - Layout Section

private extension PlaneViewController {
    func layoutAddButton() {
        view.addSubview(addButton)

        addButton.snp.makeConstraints { make in
            make.bottom.centerX.equalToSuperview()
        }
    }
}
