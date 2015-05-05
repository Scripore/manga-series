class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :title
      t.integer :manga_id

      t.timestamps null: false
    end
  end
end
