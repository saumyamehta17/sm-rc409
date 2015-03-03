class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :author
      t.text :content
      t.date :published_at

      t.timestamps
    end
  end
end
