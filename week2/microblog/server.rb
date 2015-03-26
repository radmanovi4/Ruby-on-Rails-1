require 'sinatra'

require_relative 'lib/blog'
BLOG = Blog.new

require_relative 'controllers/new_posts'

get '/' do
  erb :posts, locals: { posts: BLOG.posts }
end

get %r{^/([\d]+)} do |id|
  BLOG.get_post id.to_i
end