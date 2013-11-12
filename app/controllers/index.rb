get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:username' do
  p params[:username]
  @timeline = Twitter.user_timeline(params[:username])
  @tweetarray = @timeline.map {|t| t.text}
  erb :display10
end
