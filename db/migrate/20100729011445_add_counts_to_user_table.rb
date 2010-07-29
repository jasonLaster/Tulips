class AddCountsToUserTable < ActiveRecord::Migration
  def self.up
    rename_column :articles, :rank, :total_likes
    add_column :articles, :total_comments, :integer
  end

  def self.down
    rename_column :articles, :total_likes, :rank
    remove_column :articles, :total_comments
  end
end
