require 'sinatra/base'

class DatabaseServer < Sinatra::Base

  enable :sessions

  @data = []

  get '/set' do
    params.map {|k, v|
      Struct.new(key: k.to_s, value: v.to_s)
    }
    'stored key pair value in session'
  end

  get '/get' do
    ObjectSpace.each_object(Struct).each { |thing| 
      puts "thing.key is" + thing.key
      puts "thing.value is" + thing.value
      puts "keyword is" + keyword
          if thing.key.to_s == keyword
            return_value = thing.value
          end
      }
    return_value
    #passed_key = params[:key]
    #session["#{passed_key}"]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

