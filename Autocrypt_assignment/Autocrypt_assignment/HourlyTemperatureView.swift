//
//  HourlyTemperatureView.swift
//  Autocrypt_assignment
//
//  Created by 권은빈 on 2023/01/20.
//

import UIKit

import SnapKit

class HourlyTemperatureView: UIView {
    let scrollView: UIScrollView = UIScrollView()
    let contentView: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .equalSpacing
        view.layoutMargins = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        view.isLayoutMarginsRelativeArrangement = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.backgroundColor = .systemBlue
        self.contentView.layer.cornerRadius = 20
        configureScrollView()
        configureContentView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configureScrollView() {
        self.addSubview(scrollView)
        self.scrollView.addSubview(contentView)
        
        self.scrollView.snp.makeConstraints { make in
            make.centerX.leading.trailing.width.equalToSuperview()
            make.height.equalTo(150)
        }
        self.contentView.snp.makeConstraints { make in
            make.centerX.top.bottom.equalToSuperview()
            make.width.greaterThanOrEqualTo(self.scrollView.snp.width)
        }
    }
    
    private func configureContentView() {
        for hour in 1...16 {
            let view = temperatureView(of: hour)
            self.contentView.addArrangedSubview(view)
        }
    }
    
    private func temperatureView(of time: Int) -> UIView {
        
        let view: UIView = UIView()
        
        let timeLabel: UILabel = {
            let label = UILabel()
            label.text = "오전 \(time)시"
            label.font = .systemFont(ofSize: 9)
            return label
        }()
        
        let icon: UIImageView = {
            let view = UIImageView(frame: CGRect(x: .zero, y: .zero, width: 15, height: 15))
            let image = UIImage(named: "01d")
            view.image = image
            view.contentMode = .scaleAspectFit
            return view
        }()
        
        let temperatureLabel: UILabel = {
            let label = UILabel()
            label.text = "-5°C"
            label.font = .systemFont(ofSize: 12)
            return label
        }()
        
        view.addSubview(timeLabel)
        view.addSubview(icon)
        view.addSubview(temperatureLabel)
        
        timeLabel.snp.makeConstraints { make in
            make.centerX.leading.trailing.top.equalToSuperview()
        }
        
        icon.snp.makeConstraints { make in
            make.centerX.leading.trailing.equalToSuperview()
            make.top.equalTo(timeLabel.snp.bottom).offset(5)
        }
        
        temperatureLabel.snp.makeConstraints { make in
            make.centerX.leading.trailing.equalToSuperview()
            make.top.equalTo(icon.snp.bottom).offset(5)
        }
        
        return view
    }
}
