//
//  LottieComponent.swift
//  park-in
//
//  Created by iOS Lab on 29/04/23.
//

import SwiftUI
import Lottie

struct LottieComponent: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let contentMode: UIView.ContentMode
    
    let animationView: LottieAnimationView
    
    init(name: String, loopMode: LottieLoopMode, contentMode: UIView.ContentMode = .scaleAspectFit) {
        self.name = name
        self.animationView = LottieAnimationView(name: name)
        self.loopMode = loopMode
        self.contentMode = contentMode
    }
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        view.addSubview(animationView)
        animationView.contentMode = contentMode
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        animationView.loopMode = loopMode
        animationView.play()
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
