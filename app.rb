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
    return_value = ""
    ObjectSpace.each_object(Something).each { |thing| 
      #puts "thing.key is" + thing.key
      #puts "thing.value is" + thing.value
      #puts "keyword is" + keyword
      if thing.key.to_s == keyword
        return_value = thing.value
      end
    }
    return_value
  end

  def create_things(k, v)
    thing = Something.new(key: k.to_s, value: v.to_s)
    @data << thing
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end

