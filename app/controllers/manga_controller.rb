class MangaController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index
    @mangas = Manga.all
  end

  def show
    response = Unirest.get "https://doodle-manga-scraper.p.mashape.com/mangafox.me/manga/#{params['manga']}/",
  headers:{
    "X-Mashape-Key" => ENV['MASHAPE_KEY'],
    "Accept" => "text/plain"
  }
    @response = response.body
  end
end
