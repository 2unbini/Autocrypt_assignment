//
//  SummaryView.swift
//  Autocrypt_assignment
//
//  Created by 권은빈 on 2023/01/20.
//

import UIKit

import SnapKit

// TODO: - label text update
/// 상단 현재 도시 날씨정보
class SummaryView: UIView {
    
    lazy var city: UILabel = {
        let label = UILabel()
        label.text = "Seoul"
        label.font = .systemFont(ofSize: 25)
        label.textAlignment = .center
        return label
    }()
    
    lazy var temperature: UILabel = {
        let label = UILabel()
        label.text = "-7°C"
        label.font = .systemFont(ofSize: 35)
        label.textAlignment = .center
        return label
    }()
    
    lazy var weather: UILabel =  {
        let label = UILabel()
        label.text = "맑음"
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    lazy var maxMinTemperature: UILabel = {
        let label = UILabel()
        label.text = "최고: -1°C | 최저: -11°C"
        label.font = .systemFont(ofSize: 12)
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView()
        configureLabels()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureView() {
        self.addSubview(self.city)
        self.addSubview(self.temperature)
        self.addSubview(self.weather)
        self.addSubview(self.maxMinTemperature)
    }
    
    private func configureLabels() {
        self.city.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalToSuperview().offset(10)
        }
        
        self.temperature.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(self.city.snp.bottom).offset(10)
        }
        
        self.weather.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(self.temperature.snp.bottom).offset(10)
        }
        
        self.maxMinTemperature.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(self.weather.snp.bottom).offset(5)
        }
    }
}
