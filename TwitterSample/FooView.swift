//
//  FooView.swift
//  TwitterSample
//
//  Created by 髙木　武 on 2022/11/13.
//

import Foundation
import UIKit

@IBDesignable
final class FooView: UIView {

    // MARK: Stored Instance Properties

    // MARK: Computed Instance Properties

    // MARK: IBOutlets

    // MARK: Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        configureView()
    }

    // MARK: IBActions

    // MARK: Other Internal Methods

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()

        configureView()
    }

    // MARK: Other Private Methods

    private func configureView() {
        loadNib()

        // TODO: 他にUIの装飾処理があれば実行する
    }

    private func loadNib() {
        guard let fooView = R.nib.fooView(owner: self) else {
            fatalError("Fail to load FooView from Nib.")
        }
        fooView.frame = self.bounds
        addSubview(fooView)
    }
}
