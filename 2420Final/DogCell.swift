//
//  DogCell.swift
//  2420Final
//
//  Created by Tay Mitsumori on 5/20/22.
//

import Foundation
import UIKit

struct Dog {
    let title: String
}


class DogCell: UITableViewCell {

    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .leading
        stackView.distribution = .fill
        return stackView
    }()

    let title: UILabel = {
        let title = UILabel()
        title.font = UIFont(name: "AvenirNext-Bold", size: 20)
        title.textColor = UIColor(red:0.29, green:0.29, blue:0.29, alpha:1.0)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    func setup() {

        contentView.addSubview(stackView)

        stackView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.85).isActive = true
        stackView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.75).isActive = true
        stackView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true

        stackView.addArrangedSubview(title)
    }
    
    func setCellContents(item: Dog){
        title.text = item.title
    }

    func setBoxContents(box: Dog){
        textLabel?.text = box.title
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
