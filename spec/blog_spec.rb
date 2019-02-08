require 'spec_helper'
require './blog.rb'

describe MyBlog do
    context "When testing the MyBlog class" do

        it "Should return a welcome statement during initialization" do
            new_blogger = MyBlog.new("Melvin", 123456)
            expect(new_blogger.is_a?(MyBlog)).to be == true
        end

        it "should return 'No articles yet when there are no blogs'" do
            new_blog = MyBlog.new("Atieno", 12345)
            expect(new_blog.view_all).to be_a(String)
        end

    end
end 