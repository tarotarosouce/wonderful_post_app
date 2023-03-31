class CreateSampleArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :sample_articles do |t|
      t.string :title
      t.text :context

      t.timestamps
    end
  end
end
