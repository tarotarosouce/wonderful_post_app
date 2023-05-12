class CreateSampleArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :sample_articles do |t|
<<<<<<< HEAD:db/migrate/20230322001628_create_sample_articles.rb
      t.string :title, null: false
      t.text :content, null: false
=======
      t.string :title
      t.text :content
>>>>>>> 402fb4f (CRUD処理の実装　):db/migrate/20230415182345_create_sample_articles.rb

      t.timestamps
    end
  end
end
