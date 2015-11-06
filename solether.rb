require_relative 'config/env'

class Solether < Sinatra::Application
  set :public_folder, '.'
  set :views, "#{APP_PATH}/views"

  helpers do
    def body_class
      request.path.split("/")[1] || "home"
    end
  end

  get "/" do
    haml :index
  end
end
