//
//  MainViewController.swift
//  Autocrypt_assignment
//
//  Created by 권은빈 on 2023/01/17.
//

import UIKit

import SnapKit

/// MainViewController: 스크롤 뷰, 컨텐트 뷰, 메인 뷰를 관리하는 메인 뷰 컨트롤러
class MainViewController: UIViewController {
    
    let scrollView: UIScrollView = UIScrollView()
    let contentView: UIView = UIView()
    let mainView: MainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: background -> Image
        self.view.backgroundColor = .white
        
        configureScrollView()
        configureContentView()
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
            make.top.equalTo(self.view.safeAreaLayoutGuide)
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
    }
    
    private func configureContentView() {
        self.contentView.addSubview(self.mainView)
        
        self.mainView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
        }
    }
}

