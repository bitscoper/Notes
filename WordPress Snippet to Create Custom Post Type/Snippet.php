/* By Abdullah As-Sadeed */

function create_custom_post_type()
{
    register_post_type("computer-museum", [
        "labels" => [
            "name" => __("Computer Museum", "textdomain"),
            "singular_name" => __("Computer Museum Gallery", "textdomain"),
        ],
        "public" => true,
        "has_archive" => true,
        "rewrite" => ["slug" => "computer-museum"],
        "show_in_rest" => true,
        "supports" => [
            "title",
            "editor",
            "author",
            "thumbnail",
            "excerpt",
            "comments",
        ],
    ]);
}

add_action("init", "create_custom_post_type");
