

import UIKit

protocol ChangeCityDelegate {
    func userEnteredNewCityName(city: String)
}


class ChangeCityViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cityArray.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print(row)
        return cityArray[row]
       
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(cityArray[row])
        txtCityName.text = cityArray[row]
        delegate?.userEnteredNewCityName(city: txtCityName.text!)
        self.dismiss(animated: true, completion: nil)
    }
    

    
    
    let cityArray = ["Kochi", "Thiruvananthapuram", "Calicut", "Malappuram", "London", "Rio", "Alaska"]
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return cityArray.count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return cityArray[row]
//    }
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var txtCityName: UITextField!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    
    
    @IBAction func btnGetWeather(_ sender: UIButton) {
        
        
        delegate?.userEnteredNewCityName(city: txtCityName.text!)
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func btnBack(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
