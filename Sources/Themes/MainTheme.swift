import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)
            Head {
                MetaLink(href: "/GitRepoName/Build/css/bootstrap-icons.min.css", rel: .stylesheet)
                MetaLink(href: "/GitRepoName/Build/css/bootstrap.min.css", rel: .stylesheet)
                MetaLink(href: "/GitRepoName/Build/css/prism-default-dark.css", rel: .stylesheet)
            }
            Body {
                page.body
                Script(file: "/GitRepoName/Build/js/bootstrap.bundle.min.js")
                Script(file: "/GitRepoName/Build/js/syntax-highlighting.js")
            }
            
        }
    }
}
