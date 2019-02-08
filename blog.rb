#the blog class

module MyBlogs
    #articles inside the blog
    BLOGS = Hash.new("That blog does not seem to exist")


    # view all the blogs
    def view_all
        blogs.each do |name, article|
            puts "#{name} : #{article}"
        end
    end

    # view one blog
    def view_one(name)
        puts "#{name}" << blogs[name]
    end


end

