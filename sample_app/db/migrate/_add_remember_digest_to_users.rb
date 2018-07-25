class AddRememberDigestToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :remember_digest, :string
  end
end
rails generate migration add_activation_to_users activation_digest:string activated:boolean activated_at:datetime