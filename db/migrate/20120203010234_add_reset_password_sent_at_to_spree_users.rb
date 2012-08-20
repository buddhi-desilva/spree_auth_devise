class AddResetPasswordSentAtToSpreeUsers < ActiveRecord::Migration
  def change
    add_column :users, :reset_password_sent_at, :datetime
  end
end
