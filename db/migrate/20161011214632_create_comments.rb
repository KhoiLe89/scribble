class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :likes_comments
      t.integer :post_id
    end
  end
end
