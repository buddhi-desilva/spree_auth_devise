class AddApiKeyToUsers < ActiveRecord::Migration
  def change
    unless column_exists? :users, :spree_api_key
      add_column :users, :spree_api_key, :string, :limit => 40
    end
  end
end