import Foundation

struct Constants {
    struct Esa {
        struct Url {
            static let index = URL(string: "https://esa.io")!
            static let terms = URL(string: "https://docs.esa.io/posts/5")!
            static let api = URL(string: "https://api.esa.io/")!
            static let authorize = URL(string: "https://api.esa.io/oauth/authorize")!
            static let token = URL(string: "https://api.esa.io/oauth/token")!
        }
    }
}
