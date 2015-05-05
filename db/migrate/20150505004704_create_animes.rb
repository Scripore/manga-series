class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.string :manga_slug
      t.timestamps null: false
    end
  end
end
