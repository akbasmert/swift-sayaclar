//
//  ViewController.swift
//  sayaclar
//
//  Created by Mert AKBAŞ on 20.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var timer = Timer() // Sayac yapacağımız için timer değişkeni oluşturduk.
    var kalanZaman = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kalanZaman = 15
        label.text = "zaman: \(kalanZaman)"
    }

    @IBAction func baslatTiklandi(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true) // timeInterval kac saniyede gerçekleşeceği, repeats tekrar edip etmeyeceği
    }
    
    @objc func timerFonksiyonu(){
        label.text = "zaman: \(kalanZaman)"
        kalanZaman = kalanZaman - 1
        if kalanZaman == 0 {
            label.text = "süre bitti"
            timer.invalidate() //timerı durdur (invalidate() geçerlilik dışı bırak gibi anlamlara geliyor)
            kalanZaman = 15 // kalan zaman sıfır olup durduktan sonra tekrar başlata bastığımızda yine 15 ten geri saysın diye
            
            
        }
        
        
    }
    
}

