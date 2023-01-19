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
    
    lazy var hourlyTemperatureView: HourlyTemperatureView = HourlyTemperatureView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        
        // SUMMARY VIEW
        self.addSubview(self.summaryView)
        self.summaryView.snp.makeConstraints { make in
            make.centerX.top.leading.trailing.equalToSuperview()
        }
        
        // HOURLY TEMPERATURE VIEW
        self.addSubview(self.hourlyTemperatureView)
        self.hourlyTemperatureView.snp.makeConstraints { make in
            make.centerX.leading.trailing.equalToSuperview()
            make.top.equalTo(self.summaryView.snp.bottom).offset(20)
        }
    }
}
