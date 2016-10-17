require 'sinatra/base'
require_relative 'something'

class DatabaseServer < Sinatra::Base

  get '/' do
    'Hello DatabaseServer!'
  end


  get '/set' do
    $array_of_things = []
    params.map {|k,v|
      create_things(k.to_s, v.to_s)
    }
    "posted"
  end


  get '/get' do
    return_value = ""
    keyword = params[:key]
    ObjectSpace.each_object(Something).each { |thing| 
      puts "thing.key is" + thing.key
      puts "thing.value is" + thing.value
      puts "keyword is" + keyword
          if thing.key.to_s == keyword
            return_value = thing.value
          end
      }
    puts return_value
    return_value
  end

  
  def create_things(k,v)
    $array_of_things << Something.new(key: k, value: v)
    
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end



