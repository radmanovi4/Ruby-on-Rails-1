post '/new' do
  BLOG.add_post(params[:text])

  erb :new_post, locals: { message: 'Your post was added!' }
end

get '/new' do
  erb :new_post, locals: { message: nil }
end
