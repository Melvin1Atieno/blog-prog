#the blog class

class MyBlog
    #articles inside the blog
    @@blogs = Hash.new("That blog does not seem to exist")
    #Start a blog
    def initialize(name,password)
        @name = name
        @password = password
    end

    # view all the articles
    def view_all
            if @@blogs.empty?
                puts "No articles yet "
            else
                @@blogs.each do |name, article|
                puts "#{name} : #{article}"
            end
        end
    end

    # view one article
    def view_one(name)
        puts "#{name}" << blogs[name]
    end

    # delete a single post


end

