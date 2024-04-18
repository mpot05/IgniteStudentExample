import Foundation
import Ignite

struct Page2: StaticPage {
    var title = "Page 2"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("A second page")
                .font(.title1)
            // this goes to home folder which has an index.html
            Link("Write links like this -->", target: "/GitRepoName/Build/")
        }
        .padding(.top,.extraLarge)
        .margin()
    }
    
}
