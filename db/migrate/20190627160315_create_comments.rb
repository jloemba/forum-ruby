class CreateComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :comments
    create_table :comments do |t|
        t.string :content
        t.belongs_to :articles, index: true
        t.timestamps
    end
  end
end
