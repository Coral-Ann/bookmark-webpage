require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'index'
  end

  post '/bookmarks/create' do
    Bookmark.create(params[:url], params[:title])
    redirect '/bookmarks'
  end

  post 'bookmarks/delete' do
    Bookmark.delete(params[:deletion_title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end