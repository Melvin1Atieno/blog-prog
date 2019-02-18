# Blog Prog

A simple program for creating articles and comments in a blog
It allows basic CRUD methods on the articles within a blog

## HOW
 - install `ruby`
 - run `ruby article.rb`
### BLOG

This is how the methods work

#### To create a blog

In the `article.rb`;

```ruby
new_blog = MyBlog.new(username, password)
```

#### To view articles in blog

```ruby
new_blog.view_all
```

#### To view one article in blog

```ruby
new_blog.view_one(blog_title)
```

### ARTICLES

In the `article.rb`;

#### To create new article

```ruby
new_article = Article.new(title, body)
```

#### To add new article to blog

```ruby
new_article.add_to_blog
```

#### To add a comment to an article

```ruby
new_article.add_comment(comment_body, comment_name)
```

#### To delete a comment
```ruby
new_article.delete_comment(comment_to_delete)
```

## TEST

- cd into project directory
- `gem install  rspec`
- Run `rspec`

## RUN PROGRAM

- RUN `ruby article.rb`