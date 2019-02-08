class Comment


    def initialize(comment = "no comment yet", commenter= "no commenter")
        @comment = comment
        @commenter = commenter
    end

    def change_to_hash
        return {@commenter: @comment}
    end
end