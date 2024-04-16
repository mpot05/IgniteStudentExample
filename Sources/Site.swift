import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() {
        let site = ExampleSite()

        do {
            try site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Hello World"
    var baseTitle = " – My Awesome Site"
    var url = URL("https://www.example.com")
    var builtInIconsEnabled = true
    var syntaxHighlighters = [SyntaxHighlighter.swift, .python, .ruby, .java, .c, .bash, .cLike, .css, .cSharp, .appleScript, .cPlusPlus, .dart, .git, .go, .html, .javaScript, .json, .kotlin, .markdown, .markup, .markupTemplating, .objectiveC, .perl, .php, .rust, .sql, .typeScript, .webAssembly, .yaml]

    var author = "John Appleseed"

    var homePage = Home()
    var theme = MyTheme()

    var pages: [any StaticPage] {
        Page2()
    }
}


