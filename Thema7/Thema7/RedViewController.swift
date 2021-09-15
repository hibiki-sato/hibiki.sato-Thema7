//
//  RedViewController.swift
//  Thema7
//
//  Created by 佐藤響 on 2021/09/15.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction private func didTapButton(_ sender: Any) {
        // 入力
        let Rnum1 = Int(textField1.text ?? "") ?? 0
        let Rnum2 = Int(textField2.text ?? "") ?? 0
        // 計算
        let result = String(Rnum1 + Rnum2)
        // 表示
        resultLabel.text = result
        // キーボードを隠す
        self.textField1.resignFirstResponder()
        self.textField2.resignFirstResponder()
    }
}
