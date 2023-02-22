import UIKit

class InicioViewController: UIViewController {

    @IBOutlet weak var TextoTextField: UITextField!
    @IBOutlet weak var NumeroTextField: UITextField!
    @IBOutlet weak var SiguienteBoton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func SiguienteAction(_ sender: Any) {
        let texto = TextoTextField.text
        let numero = NumeroTextField.text
        if (texto != "" && numero != "") {
            let viewcontroller = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewControler
            viewcontroller?.numero = Int(numero ?? "") ?? 0
            viewcontroller?.texto = texto ?? ""
            viewcontroller?.modalPresentationStyle = .automatic
            viewcontroller?.modalTransitionStyle = .flipHorizontal
            present(viewcontroller!, animated: true)
        } else {
            let AlertController = UIAlertController(title: "Error", message: "Introduce todos los datos", preferredStyle: .alert)
            AlertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
            self.present(AlertController, animated: true, completion: nil)
        }
        
    }
    
}
