import Swift
import Foundation

struct Posts: Codable {
    let posts: [Post]
    let prev_page: Int?
    let next_page: Int?
    let total_count: Int
    let page: Int
    let per_page: Int
    let max_per_page: Int
}

let mockPosts: Posts = Posts(
    posts: [
        Post(
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
    ],
    prev_page: nil,
    next_page: nil,
    total_count: 1,
    page: 1,
    per_page: 20,
    max_per_page: 100
)
