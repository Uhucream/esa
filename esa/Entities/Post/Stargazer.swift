import Swift
import Foundation

struct Stargazer: Hashable, Codable {
    let created_at: Date
    let body: String?
    let user: User
}
