//
//  ViewController.swift
//  teaxtViewAndLabel
//
//  Created by 李小明 on 2016/11/5.
//  Copyright © 2016年 李小明. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var wordsCount: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text != "" {
            if count + 1 == 11 {
                return false
            }
            count += 1
            wordsCount.text = "\(count)"
        }
        else {
            if  count-1 == -1{
                return false
            }
            count -= 1
            wordsCount.text = "\(count)"
            
        }
        return true
    }

    }



