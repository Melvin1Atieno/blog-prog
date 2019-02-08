require 'spec_helper'
require './blog.rb'
require './article.rb'

describe Article do

    context "Testing the 'Article class'" do

        it "Should allow creation of a new article instance" do
            new_article = Article.new("first title", "first body")
            expect(new_article.is_a?(Article)).to be == true
        end

        it "Should return success message when article is added" do
            new_article = Article.new("first title", "first body")
            expect(new_article.add_to_blog).to be == "Article Added successfully"
        end

        it "Should return success message when comment is added" do
            new_article = Article.new("first title", "first body")
            expect(new_article.add_comment("I like", "pooh")).to be == "comment added successfully"
        end

        it "Should return delete comment message" do
            new_article = Article.new("title", "body")
            new_article.add_to_blog
            new_article.add_comment("I do not like", "bubbles")
            expect(new_article.delete_comment("I do not like")).to be == "comment successfully deleted" 
        end
   
    end
end