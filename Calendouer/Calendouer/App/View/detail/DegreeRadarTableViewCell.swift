//
//  DegreeRadarTableViewCell.swift
//  Calendouer
//
//  Created by 段昊宇 on 2017/4/21.
//  Copyright © 2017年 Desgard_Duan. All rights reserved.
//

import UIKit

class DegreeRadarTableViewCell: UITableViewCell {

    var weather_today: WeatherObject? {
        didSet {
            if let weather = weather_today {
                
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}