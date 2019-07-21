import UIKit

func beerSong() -> String {
    var lyrics: String = ""
    
    for number in 1...999 {
        let newLine: String = "\n\(1000 - number) bottles of beer on the wall, \(1000 - number) bottles of beer. \nTake one down and pass it around, \(999 - number) bottles of beer in the wall.\n "
        
        lyrics += newLine
    }
    lyrics += "\nNo more bottles of beer in the wall, no more bottles of beer. \nGo to the store and buy somo more."
    
    return lyrics
}

print(beerSong())
