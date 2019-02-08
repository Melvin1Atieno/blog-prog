
require_relative 'blog.rb'
# single blog class
class Article < MyBlog
    attr_accessor :title, :body
    # attr_accessor :body

    
    # create an article
    def initialize(title, body)
        @title = title
        @body = body
        @comments = Array.new()
    end

    # add the article to blogs
    def add_to_blog
        @@blogs[@title] = [@body, @comments]
        puts "Article Added successfully"
    end

    # add a comment to the article
    def add_comment(comment,commenter)
        # add comment to post
        @comments << {commenter => comment}
        puts "comment added successfully"
    end

    # delete comment
    def delete_comment(comment_to_delete)
        #finds comment equal to the comment to delete and deletes it
        @comments.each {|comment|
                        comment.delete_if {|commenter, comment| comment == comment_to_delete}}
    end

end

