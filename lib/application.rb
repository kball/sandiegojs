require 'sinatra/base'

class Application < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  set :public, File.join(root, 'public')

  get '/' do
    "Welcome to San Diego JS"
  end
end
