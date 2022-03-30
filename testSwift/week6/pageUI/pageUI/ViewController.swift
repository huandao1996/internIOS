//
//  ViewController.swift
//  pageUI
//
//  Created by huan on 10/08/2021.
//

import UIKit

class ViewController: UIViewController {

        private let scrollView = UIScrollView()
        
        private let pageControl: UIPageControl = {
            let pageControl = UIPageControl()
            pageControl.numberOfPages = 5
            pageControl.backgroundColor = .systemBlue
            return pageControl
        }()
        
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            pageControl.addTarget(self, action: #selector(pageControlDidChange(_:)), for: .valueChanged)
            view.addSubview(scrollView)
            view.addSubview(pageControl)
            
        }
        
    @objc private func pageControlDidChange(_ sender: UIPageControl){
            let current = sender.currentPage
            scrollView.setContentOffset(CGPoint(x: CGFloat(current) * view.frame.size.width, y: 0), animated: true)
        }
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            pageControl.frame = CGRect(x: 10, y: Int(view.frame.size.height - 100), width: Int(view.frame.size.height - 20), height: 70)
            scrollView.frame = CGRect(x: 0, y: 0, width: Int(view.frame.size.height), height: Int(view.frame.size.height - 100))
            if scrollView.subviews.count == 2 {
                configureScrollView()
            }
        }
        private func configureScrollView() {
            scrollView.contentSize = CGSize(width: view.frame.size.width * 5, height: scrollView.frame.size.height)
            scrollView.isPagingEnabled = true
            
            let colors: [UIColor] = [
                .systemBlue,
                .systemGray,
                .systemRed,
                .systemPink,
                .systemOrange
            ]
            for x in 0..<5 {
                let page = UIView(frame: CGRect(x: CGFloat(x) * view.frame.size.width, y: 0, width: view.frame.size.width, height: scrollView.frame.size.height))
                page.backgroundColor = colors[x]
                scrollView.addSubview(page)
            }
        }
}
    extension ViewController: UIScrollViewDelegate {
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        pageControl.currentPage = Int(floor(Float(scrollView.contentOffset.x) / Float(scrollView.frame.size.width)))
            pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.size.width)
        }
    }

 
