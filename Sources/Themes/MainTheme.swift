import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)
            Head {
                MetaLink(href: "/Build/css/bootstrap-icons.min.css", rel: .stylesheet)
                MetaLink(href: "/Build/css/bootstrap.min.css", rel: .stylesheet)
                MetaLink(href: "/Build/css/prism-default-dark.css", rel: .stylesheet)
            }
            Body {
                page.body
                Script(file: "/Build/js/bootstrap.bundle.min.js")
                Script(file: "/Build/js/syntax-highlighting.js")
            }
        }
    }
}
