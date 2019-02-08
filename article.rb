
require_relative 'blog.rb'
# single blog class
class Article < MyBlog
    
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

my_blog = MyBlog.new("Melvin", 12345)
article = Article.new("frist title","first article body")
article.add_to_blog
article.add_comment("this is a comment to first post", "Melvin")
article2 = Article.new("Second title", "My second body")
article2.add_to_blog
article2.add_comment("this is a comment to second post","Atieno")
article2.add_comment("this is a secon to second post","Atieno2")
# my_blog.delete_article("Second title")
my_blog.view_one("frist title")
