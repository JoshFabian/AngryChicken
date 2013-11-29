class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, limit: 20, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :auth_token, limit: 32, null: false
      t.datetime :last_seen_at
      t.string :ip_address

      t.timestamps
    end
  end
end
