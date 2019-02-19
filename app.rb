require 'securerandom'

class Comment
    @@id = 0
    attr_accessor :body
    attr_reader :id
   

    def initialize(body)
        @id = @@id += 1
        @body = body
    end

end
class Article

    @@id = 0
    attr_reader :id, :comments
    attr_accessor :title, :body

    def initialize(title, body)
        # increment id
        @id = @@id += 1
        @title = title
        @body = body 
        @comments = Array.new
    end

    def new_comment(body: nil)
        comment = Comment.new(body)
        @comments.push(comment)
        return comment
    end
   
end


class Blog 
    #articles inside the blog
    @@id = 0
    @@blogs = Array.new
    attr_accessor :name
    attr_reader :articles, :id
    #Start a blog
    def initialize(name)
        #increase id
        @name = name
        @id = @@id += 1
        @@blogs.push(name)
        @articles = Array.new
    end

    def new_article(title: nil, body: nil)
        article = Article.new(title, body)
        @articles.push(article)
        return article
    end

end

