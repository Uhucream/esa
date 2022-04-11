struct User: Codable, Hashable {
    let myself: Bool
    let name: String
    let screen_name: String
    let icon: String
}
