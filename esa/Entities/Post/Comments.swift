import SwiftUI

struct Comments: Codable {
    let comments: [Comments]
    let prev_page: Int?
    let next_page: Int?
    let total_count: Int
    let page: Int
    let per_page: Int
    let max_per_page: Int
}
