require 'sinatra/base'
require_relative 'something'

class DatabaseServer < Sinatra::Base

  get '/set' do
    create_things(params)
    'stored key pair value'
  end

  get '/get' do
    keyword = params[:key]
    find_value(keyword)
  end

  private
  def create_things(params)
    params.map {|k, v| 
      Something.new(key: k, value: v)
    }
  end

  def find_value(keyword)
    ObjectSpace.each_object(Something).each { |thing| 
      if thing.key == keyword
        return thing.value
      end
    }
  end

  # start the server if ruby file executed directly
  set :port, 4000
  run! if app_file == $0
end

