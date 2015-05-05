class CreateMangas < ActiveRecord::Migration
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :manga_slug
      t.timestamps null: false
    end
  end
end
