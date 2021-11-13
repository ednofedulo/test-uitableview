//
//  LargeTableViewCell.swift
//  teste-uitableview
//
//  Created by Edno Fedulo on 13/11/21.
//

import UIKit

class LargeTableViewCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(numberOfButtons: Int, tintColor: UIColor = .systemBlue ) {
        guard numberOfButtons > 0 else { return }
        for i in 1...numberOfButtons {
            stackView.addArrangedSubview(self.buttonFactory(withTitle: String(i), tintColor: tintColor))
        }
    }
    
    private func buttonFactory(withTitle title: String, tintColor: UIColor) -> UIButton {
        
        
        let button = UIButton(configuration: .tinted(), primaryAction: nil)
        
        button.setTitle(title, for: .normal)
        button.tintColor = tintColor
        return button
    }
    
}
