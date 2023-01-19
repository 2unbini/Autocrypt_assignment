//
//  MainView.swift
//  Autocrypt_assignment
//
//  Created by 권은빈 on 2023/01/20.
//

import UIKit

import SnapKit

/// Main 화면
class MainView: UIView {
    
    lazy var summaryView: SummaryView = SummaryView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        self.addSubview(self.summaryView)
        
        self.summaryView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
}
