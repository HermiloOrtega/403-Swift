
import UIKit

class AthleteFormViewController: UIViewController {
  
    struct PropertyKeys {
        static let unwind = "UnwindToAthleteTable"
    }
    
    // Model
    var athlete: Athlete?
    
    // Views
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var leagueTextField: UITextField!
    @IBOutlet var teamTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }
    
    func updateView() {
        guard let athlete = athlete else {return}
        
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }

}
