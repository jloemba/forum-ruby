class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :slug
      t.timestamps
      t.belongs_to :users, index: true

    end
  end
end
