class CreateUserLinks < ActiveRecord::Migration
  def change
    create_table :user_links do |t|
      t.references :user
      t.references :link
      t.string :short_link
      t.integer :clicks

      t.timestamps
    end
    add_index :user_links, :user_id
    add_index :user_links, :link_id
  end
end
