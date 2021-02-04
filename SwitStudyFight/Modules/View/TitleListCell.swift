//
//  TitleListCell.swift
//  SwitStudyFight
//
//  Created by mingxing on 2021/2/4.
//

import UIKit

class TitleListCell: UITableViewCell {
    
    
    lazy var labelTop = { () -> UILabel in
        let label = UILabel.init()
        label.textColor = UIColor.purple
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    func addUI() {
        self.addSubview(self.labelTop)
        self.labelTop.frame = CGRect(x: 16, y: 0, width: 300, height: 60)
    }
    
    ///数据填充
    func fillCellData(labelTitle : String) {
        self.labelTop.text = labelTitle
    }
}
