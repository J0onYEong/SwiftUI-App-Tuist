//
//  LottieView.swift
//
//
//  Created by 최준영 on 2023/11/07.
//

import Lottie
import SwiftUI

public struct LottieView: UIViewRepresentable {
    var filePath: String
    var loopMode: LottieLoopMode

    var animationView: LottieAnimationView = .init()

    public init(filePath: String, loopMode: LottieLoopMode) {
        self.filePath = filePath
        self.loopMode = loopMode
    }

    public func makeUIView(context _: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)

        animationView.animation = LottieAnimation.filepath(filePath)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        return view
    }

    public func updateUIView(_: UIView, context _: Context) {}
}
