class Blog
  attr_accessor :posts

  def initialize
    @posts = []
    @tags  = []
  end

  def add_post(post)
    @posts << post
  end

  def get_post(index)
    @posts[index]
  end
end