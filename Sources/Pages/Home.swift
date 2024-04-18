import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Hello world!")
                .font(.title1)
            // this goes to page 2 by accessing its folder that has an index.html
            Link("Write links like this -->", target: "/GitRepoName/Build/page2/")
        }
         .padding(.top, .extraLarge)
         .margin()
    }
}
