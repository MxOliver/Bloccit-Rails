class PostsController < ApplicationController
  def index

    @posts = find_spam(Post.all)
  end

  def find_spam(posts)
    posts.each_with_index do |post, index|
      if post.id % 5 === 0
        @spam_post = Post.find(post[:id])
        @spam_post.update(title: "SPAM")
      else
        next
      end
    end

    return Post.all

  end

  def show
  end

  def new
  end

  def edit
  end
end
