class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    erb :'index'
  end

  get '/comedians?age=:age' do
    @comedians = Comedian.find(params[:age])
    erb :'show'
  end
end
