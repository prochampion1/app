class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.text :body
      t.timestamps
    end

    add_index :comments, :article_id
  end
end
