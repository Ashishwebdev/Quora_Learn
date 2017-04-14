class AddUidNameOauthTokenOauthExpires < ActiveRecord::Migration
  def change
  	add_column :users, :uid, :integer
  	add_column :users, :oauth_token, :integer
  	add_column :users, :oauth_expires_at, :datetime
  end
end
