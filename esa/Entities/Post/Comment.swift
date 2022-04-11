import Swift
import Foundation

struct Comment: Codable, Hashable {
    let id: Int
    let body_md: String
    let body_html: String
    let created_at: Date
    let updated_at: Date
    let url: String
    let created_by: User
    let stargazers: Optional<[Stargazer]>
}
