import Swift
import Foundation

struct Post: Hashable, Codable {
    let number: Int
    let name: String
    let full_name: String
    let wip: Bool
    let body_md: String
    let body_html: String
    let created_at: Date
    let message: String
    let url: String
    let updated_at: Date
    let tags: [String]
    let category: String
    let revision_number: Int
    let created_by: User
    let updated_by: User
    let kind: String
    let comments_count: Int
    let tasks_count: Int
    let done_tasks_count: Int
    let stargazers_count: Int
    let watchers_count: Int
    let star: Bool
    let watch: Bool
    let comments: Optional<[Comment]>
    let stargazers: Optional<[Stargazer]>
}

let dateFormatter = ISO8601DateFormatter()

let mockPost: Post = Post(
    number: 1,
    name: "hi!",
    full_name: "日報/2015/05/09/hi! #api #dev",
    wip: true,
    body_md: "# Getting Started",
    body_html: "<h1 id=\"1-0-0\" name=\"1-0-0\">\n<a class=\"anchor\" href=\"#1-0-0\"><i class=\"fa fa-link\"></i><span class=\"hidden\" data-text=\"Getting Started\"> &gt; Getting Started</span></a>Getting Started</h1>\n",
    created_at: dateFormatter.date(from: "2015-05-09T11:54:50+09:00")!,
    message: "Add Getting Started section",
    url: "https://docs.esa.io/posts/1",
    updated_at: dateFormatter.date(from: "2015-05-09T11:54:51+09:00")!,
    tags: [
        "api",
        "dev"
    ],
    category: "日報/2015/05/09",
    revision_number: 1,
    created_by: User(
        myself: true,
        name: "Atsuo Fukaya",
        screen_name: "fukayatsu",
        icon: "http://img.esa.io/uploads/production/users/1/icon/thumb_m_402685a258cf2a33c1d6c13a89adec92.png"
    ),
    updated_by: User(
        myself: true,
        name: "Atsuo Fukaya",
        screen_name: "fukayatsu",
        icon: "http://img.esa.io/uploads/production/users/1/icon/thumb_m_402685a258cf2a33c1d6c13a89adec92.png"
    ),
    kind: "flow",
    comments_count: 1,
    tasks_count: 1,
    done_tasks_count: 1,
    stargazers_count: 1,
    watchers_count: 1,
    star: true,
    watch: true,
    comments: [],
    stargazers: []
)
