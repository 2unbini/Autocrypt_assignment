//
//  MainViewController.swift
//  Autocrypt_assignment
//
//  Created by 권은빈 on 2023/01/17.
//

import UIKit

import SnapKit

class MainViewController: UIViewController {
    
    let scrollView: UIScrollView = UIScrollView()
    let contentView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureScrollView()
    }
    
    private func configureScrollView() {
        self.view.addSubview(scrollView)
        self.scrollView.addSubview(contentView)
        
        self.scrollView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
        self.contentView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
    }
}

