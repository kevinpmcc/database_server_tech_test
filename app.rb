require 'sinatra/base'

class DatabaseServer < Sinatra::Base

  enable :sessions

  get '/set' do
    params.map {|k, v|
      session["#{k}"] = v
    }
    'stored key pair value in session'
  end


  get '/get' do
    passed_key = params[:key]
    session["#{passed_key}"]
  end

  # start the server if ruby file executed directly
  set :port, 4000
  run! if app_file == $0
end



