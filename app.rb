require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader

  end
    get '/sort-names' do 

        names = params[:names]
        sorted_names=names.split(',').sort.join(',')
        #binding.irb
        return sorted_names
        
    end
end