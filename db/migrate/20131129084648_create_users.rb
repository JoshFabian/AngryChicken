class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.string :auth_token
      t.datetime :last_seen_at
      t.string :ip_address

      t.timestamps
    end
  end
end
