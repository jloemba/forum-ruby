class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.string :mail
    end
  end
end
