class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :summary
      t.datetime :published_at
      t.string :slug, unique: true
      t.boolean :is_favorite

      t.timestamps
    end
  end
end
