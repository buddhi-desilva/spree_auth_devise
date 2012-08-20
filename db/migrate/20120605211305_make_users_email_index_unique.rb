class MakeUsersEmailIndexUnique < ActiveRecord::Migration
  def up
    add_index "users", ["email"], :name => "email_idx_unique", :unique => true
  end

  def down
    remove_index "users", :name => "email_idx_unique"
  end
end
