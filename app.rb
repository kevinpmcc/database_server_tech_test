require 'sinatra/base'
require_relative 'something'

class DatabaseServer < Sinatra::Base
  get '/' do
    'Hello DatabaseServer!'
  end


  get '/set' do
    params.map {|k,v|
        create_things(k.to_s, v.to_s)
    }
  end

  get '/posted' do
    "that's been posted"
  end

  get '/get' do
    #keyword = params[:key]
   # @object[keyword] 
    #puts @params[params[:key]]
  end

  
  def create_things(k,v)
    @my_hash = {}
    @my_hash[k] = v
      
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end



