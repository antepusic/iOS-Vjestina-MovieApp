//
//  MovieDetailsViewController.swift
//  MovieApp
//
//  Created by Ante Pušić on 30.03.2022.
//

import Foundation
import UIKit
import SnapKit

class MovieDetailsViewController: UIViewController {
    private var scrollView: UIScrollView!
    private var contentView: UIView!
    
    
    private var backgroundImageView: UIImageView!
    
    private var scoreLabel: UILabel!
    private var userScoreLabel: UILabel!
    
    private var titleLabel: UILabel!
    private var yearLabel: UILabel!
    
    private var dateLabel: UILabel!
    private var countryLabel: UILabel!
    
    private var genreLabel: UILabel!
    private var durationLabel: UILabel!
    
    private var starGraphicView: UIImageView!
    
    
    private var overviewLabel: UILabel!
    
    private var descriptionLabel: UILabel!
    
    private var stackViewTop: UIStackView!
    private var roleLabel0: CustomRoleView!
    private var roleLabel1: CustomRoleView!
    private var roleLabel2: CustomRoleView!
    
    private var stackViewBottom: UIStackView!
    private var roleLabel3: CustomRoleView!
    private var roleLabel4: CustomRoleView!
    private var roleLabel5: CustomRoleView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
        addSubviews()
        setConstraints()
        setStyles()
    }
    
    private func initialize() {
        scrollView = UIScrollView()
        scrollView.delegate = self
        contentView = UIView()
        
        
        backgroundImageView = UIImageView(image: UIImage(named: "ironmanposter.jpeg"))
        
        scoreLabel = UILabel()
        userScoreLabel = UILabel()
        
        titleLabel = UILabel()
        yearLabel = UILabel()
        
        dateLabel = UILabel()
        countryLabel = UILabel()
        
        genreLabel = UILabel()
        durationLabel = UILabel()
        
        starGraphicView = UIImageView(image: UIImage(systemName: "star"))
        
        
        overviewLabel = UILabel()
        
        descriptionLabel = UILabel()
        
        stackViewTop = UIStackView()
        stackViewTop.axis = .horizontal
        stackViewTop.alignment = .fill
        stackViewTop.distribution = .fillEqually
        stackViewTop.translatesAutoresizingMaskIntoConstraints = false
        roleLabel0 = CustomRoleView(name: "Don Heck", role: "Characters")
        roleLabel1 = CustomRoleView(name: "Jack Kirby", role: "Characters")
        roleLabel2 = CustomRoleView(name: "Jon Favreau", role: "Director")
        stackViewTop.addArrangedSubview(roleLabel0)
        stackViewTop.addArrangedSubview(roleLabel1)
        stackViewTop.addArrangedSubview(roleLabel2)
        
        stackViewBottom = UIStackView()
        stackViewBottom.axis = .horizontal
        stackViewBottom.alignment = .fill
        stackViewBottom.distribution = .fillEqually
        stackViewBottom.translatesAutoresizingMaskIntoConstraints = false
        roleLabel3 = CustomRoleView(name: "Don Heck", role: "Screenplay")
        roleLabel4 = CustomRoleView(name: "Jack Marcum", role: "Screenplay")
        roleLabel5 = CustomRoleView(name: "Matt Holloway", role: "Screenplay")
        stackViewBottom.addArrangedSubview(roleLabel3)
        stackViewBottom.addArrangedSubview(roleLabel4)
        stackViewBottom.addArrangedSubview(roleLabel5)
    }
    
    private func addSubviews() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(contentView)
        contentView.addSubview(backgroundImageView)
        
        
        backgroundImageView.addSubview(scoreLabel)
        backgroundImageView.addSubview(userScoreLabel)
        
        backgroundImageView.addSubview(titleLabel)
        backgroundImageView.addSubview(yearLabel)
        
        backgroundImageView.addSubview(dateLabel)
        backgroundImageView.addSubview(countryLabel)
        
        backgroundImageView.addSubview(genreLabel)
        backgroundImageView.addSubview(durationLabel)
        
        backgroundImageView.addSubview(starGraphicView)
        
        
        contentView.addSubview(overviewLabel)
        
        contentView.addSubview(descriptionLabel)
        
        contentView.addSubview(stackViewTop)
        contentView.addSubview(stackViewBottom)
    }
    
    private func setConstraints() {
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        contentView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.width.equalTo(view)
        }
        
        backgroundImageView.snp.makeConstraints {
            $0.bottom.equalTo(contentView.snp.centerY)
            $0.trailing.leading.equalToSuperview()
            $0.top.equalToSuperview()
        }

        
        scoreLabel.snp.makeConstraints {
            $0.width.equalTo(30)
            $0.height.equalTo(10)
            $0.bottom.equalTo(titleLabel.snp.top).inset(-2)
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
        }
        userScoreLabel.snp.makeConstraints {
            $0.width.equalTo(100)
            $0.height.equalTo(10)
            $0.bottom.equalTo(titleLabel.snp.top).inset(-2)
            $0.leadingMargin.equalTo(scoreLabel.snp.trailing).inset(-8)
        }
        
        
        titleLabel.snp.makeConstraints {
            $0.width.equalTo(110)
            $0.height.equalTo(50)
            $0.bottom.equalTo(dateLabel.snp.top).inset(-2)
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
        }
        yearLabel.snp.makeConstraints {
            $0.width.equalTo(100)
            $0.height.equalTo(50)
            $0.bottom.equalTo(dateLabel.snp.top).inset(-2)
            $0.leadingMargin.equalTo(titleLabel.snp.trailing).inset(-8)
        }
        
        dateLabel.snp.makeConstraints {
            $0.width.equalTo(70)
            $0.height.equalTo(20)
            $0.bottom.equalTo(genreLabel.snp.top).inset(-2)
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
        }
        countryLabel.snp.makeConstraints {
            $0.width.equalTo(50)
            $0.height.equalTo(20)
            $0.bottom.equalTo(genreLabel.snp.top).inset(-2)
            $0.leadingMargin.equalTo(dateLabel.snp.trailing).inset(-8)
        }
        
        genreLabel.snp.makeConstraints {
            $0.width.equalTo(210)
            $0.height.equalTo(20)
            $0.bottom.equalTo(starGraphicView.snp.top).inset(-10)
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
        }
        durationLabel.snp.makeConstraints {
            $0.width.equalTo(50)
            $0.height.equalTo(20)
            $0.bottom.equalTo(backgroundImageView.snp.bottom).inset(50)
            $0.leadingMargin.equalTo(genreLabel.snp.trailing).inset(10)
        }
        
        starGraphicView.snp.makeConstraints {
            $0.width.equalTo(30)
            $0.height.equalTo(30)
            $0.bottom.equalTo(backgroundImageView.snp.bottom).inset(10)
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
        }
        
        
        overviewLabel.snp.makeConstraints {
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalTo(backgroundImageView.snp.bottom).offset(20)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalTo(overviewLabel.snp.bottom).offset(8)
        }
        
        stackViewTop.snp.makeConstraints {
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(20)
        }
        stackViewBottom.snp.makeConstraints {
            $0.leadingMargin.equalTo(contentView.safeAreaLayoutGuide).inset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalTo(stackViewTop.snp.bottom).offset(40)
        }
    }
    
    private func setStyles() {
        view.backgroundColor = .white
        
        scoreLabel.text = "76%"
        scoreLabel.font = .systemFont(ofSize: 12, weight: .bold)
        scoreLabel.textColor = .white
        userScoreLabel.text = "User Score"
        userScoreLabel.font = .systemFont(ofSize: 12, weight: .bold)
        userScoreLabel.textColor = .white
        
        titleLabel.text = "Iron Man"
        titleLabel.font = .systemFont(ofSize: 24, weight: .bold)
        titleLabel.textColor = .white
        yearLabel.text = "(2008)"
        yearLabel.font = .systemFont(ofSize: 24)
        yearLabel.textColor = .white
        
        dateLabel.text = "05/02/2008"
        dateLabel.font = .systemFont(ofSize: 12)
        dateLabel.textColor = .white
        countryLabel.text = "(US)"
        countryLabel.font = .systemFont(ofSize: 12)
        countryLabel.textColor = .white
        
        genreLabel.text = "Action, Science Fiction, Adventure"
        genreLabel.font = .systemFont(ofSize: 12)
        genreLabel.textColor = .white
        durationLabel.text = "2h 6m"
        durationLabel.font = .systemFont(ofSize: 12, weight: .bold)
        durationLabel.textColor = .white
        
        starGraphicView.layer.backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.6).cgColor
        starGraphicView.layer.cornerRadius = 20
        starGraphicView.clipsToBounds = false
        starGraphicView.tintColor = .white
        
        
        overviewLabel.text = "Overview"
        overviewLabel.font = .systemFont(ofSize: 24, weight: .bold)
        overviewLabel.textColor = .black
        
        descriptionLabel.text = "After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil."
        descriptionLabel.font = .systemFont(ofSize: 12)
        descriptionLabel.numberOfLines = 0
    }
}

extension MovieDetailsViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollViewDidScroll")
    }

    func scrollViewDidScrollToTop(_ scrollView: UIScrollView) {
        print("scrollViewDidScrollToTop")
    }

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("scrollViewDidEndDragging")
    }
}

class CustomRoleView:UIView {
    private var name: String?
    private var role: String?
    private var nameLabel: UILabel!
    private var roleLabel: UILabel!
    
    init(name: String, role: String) {
        super.init(frame: .zero)
            
        self.name = name
        self.role = role
        
        createViews()
        addSubviews()
        setStyles()
        setConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createViews() {
        nameLabel = UILabel()
        roleLabel = UILabel()
    }
    
    private func addSubviews() {
        addSubview(nameLabel)
        addSubview(roleLabel)
    }
    
    private func setStyles() {
        nameLabel.text = name
        nameLabel.font = .systemFont(ofSize: 12, weight: .bold)
        
        roleLabel.text = role
        roleLabel.font = .systemFont(ofSize: 12)
    }
    
    private func setConstraints() {
        nameLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
        }
        roleLabel.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalTo(nameLabel.snp.bottom)
        }
    }
}
