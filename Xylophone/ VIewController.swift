import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let noteSound = soundArray[sender.tag - 1]
        playSound(noteSound: noteSound)
    }
    
    func playSound(noteSound : String) {
        let soundUrl = Bundle.main.url(forResource: noteSound, withExtension: "wav")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }
}

