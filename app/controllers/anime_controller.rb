class AnimeController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index


    response = Unirest.get "https://doodle-manga-scraper.p.mashape.com/mangafox.me/",
    headers:{
      "X-Mashape-Key" => ENV['MASHAPE_KEY'],
      "Accept" => "text/plain"
    }
    @response = response.body
  end
end
