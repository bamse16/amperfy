import Foundation
import CoreData

@objc(Artist)
public class Artist: AbstractLibraryElementMO {

    override var identifier: String {
        return name ?? ""
    }
    
    var songs: [Song] {
        guard let songsSet = songsMO else { return [Song]() }
        return songsSet.array as! [Song]
    }
    
    var hasCachedSongs: Bool {
        for song in songs {
            if song.data != nil {
                return true
            }
        }
        return false
    }

}
