//
//  GreenViewController.swift
//  Thema7
//
//  Created by 佐藤響 on 2021/09/15.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        // 入力
        let Gnum1 = Int(textField1.text ?? "") ?? 0
        let Gnum2 = Int(textField2.text ?? "") ?? 0
        // 計算
        let result = String(Gnum1 - Gnum2)
        // 表示
        resultLabel.text = result
        // キーボードを隠す
        self.textField1.resignFirstResponder()
        self.textField2.resignFirstResponder()
    }
}
