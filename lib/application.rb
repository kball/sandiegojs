require 'sinatra/base'
require 'haml'
require 'sass'

class Application < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  set :public, File.join(root, 'public')
  set :haml, :format => :html5

  get '/' do
    haml :index
  end

  get '/styles.css' do
    scss :styles
  end
end
