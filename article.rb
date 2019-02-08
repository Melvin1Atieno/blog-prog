
# single blog class
class Article

    include MyBlogs

    # create an article
    def create(title, body)
        @comments = Array.new("no comments yet")
        BLOGS[title] = [body, @comments]
    end

    def add_comment(comment,commenter)
        new_comment = Comment.new(comment, commenter)
        new_comment.change_to_hash
        @comments << new_comment
    end


end
