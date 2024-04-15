import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Hello world!")
                .font(.title1)
            
        }
         .padding(.top, .extraLarge)
         .margin()
    }
}
