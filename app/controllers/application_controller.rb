
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

 post '/articles' do
     @article = Article.new(name: params[:article][:title], content: params[:article][:content])
      data = params[:article]
     data.collect do |details|
       Article.new(title: details[:title], content: details[:content])
     end
     @articles = Article.all
     erb :show
   end
 end
