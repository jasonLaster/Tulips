class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.string :source
      t.text :description
      t.integer :rank
      t.integer :user_id
      t.integer :network_id
      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
