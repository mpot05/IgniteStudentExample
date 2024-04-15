import Foundation
import Ignite

struct Page2: StaticPage {
    var title = "Page 2"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("A second page")
                .font(.title1)
            
        }
        .padding(.top,.extraLarge)
        .margin()
    }
    
}
