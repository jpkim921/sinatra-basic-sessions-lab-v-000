require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "peaches"
  end

  get '/checkout' do
    @session = session
    binding.pry

    erb :index
  end

  post

end
