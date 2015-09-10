class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.string :username, null: false
      t.belongs_to :recipes
      
      t.timestamps
    end
  end
end
