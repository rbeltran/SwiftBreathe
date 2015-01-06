
import Foundation


struct ListItem {
    var label : String
    var subList : [ListItem]
    init( label: String ) {
        self.label = label
        subList = [ListItem]()
    }
}
