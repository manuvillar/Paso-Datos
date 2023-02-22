import UIKit

class HomeViewControler: UIViewController {

    @IBOutlet weak var LabelTexto: UILabel!
    @IBOutlet weak var LabelNumero: UILabel!
    @IBOutlet weak var BotonAtras: UIButton!
    
    var numero = 0
    var texto = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LabelNumero.text = String(numero)
        LabelTexto.text = texto
    }
}
