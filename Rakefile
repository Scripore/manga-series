# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

namespace :seed do
  task :populate_anime_titles => :environment do
    response = Unirest.get "https://doodle-manga-scraper.p.mashape.com/mangafox.me/",
    headers:{
      "X-Mashape-Key" => ENV['MASHAPE_KEY'],
      "Accept" => "text/plain"
    }
    response.body.each do |hash|
      Anime.create(manga_slug: hash['mangaId'], title: hash['name'])
    end
  end
end


Rails.application.load_tasks
