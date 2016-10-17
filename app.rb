require 'sinatra/base'
require_relative 'something'

class DatabaseServer < Sinatra::Base

  enable :sessions

  @data = []

  get '/set' do
    params.map {|k, v|
      create_things(k.to_s, v.to_s)
    }
    'stored key pair value in session'
  end

  get '/get' do
    keyword = params[:key]
    ObjectSpace.each_object(Something).each { |thing| 
      if thing.key.to_s == keyword
        return thing.value
      end
    }
  end

  def create_things(k, v)
    Something.new(key: k.to_s, value: v.to_s)
  end

  # start the server if ruby file executed directly
  set :port, 4000
  run! if app_file == $0
end

