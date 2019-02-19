# Blog Prog

A simple program for creating articles and comments in a blog
It allows basic CRUD methods on the articles within a blog

## HOW

- install `ruby`
- run `ruby main.rb`
  
### BLOG

This is how the methods work

#### To create a blog

In the `main.rb`;

```ruby
new_blog = Blog.new(name: "cool blog name')

```

#### To edit blog name

```ruby
new_blog.name = "My cooler new name"
```

#### To create article in blog

```ruby
article_1 = new_blog.new_article(title: "cool blog title", body: "cool blog text")
```

#### To view articles in blog

```ruby
   new_blog.articles
```

#### To edit blog title

```ruby
article_1.title = "new cooler title"
```


#### To comment on artitcle

```ruby
comment_to_article_1 = article_1.new_comment(body: "first comment")
```

#### To edit comment

```ruby
comment_to_article_1.body = "new comment"
```

## TEST

Program uses minitest.


- Run `ruby main.rb`
