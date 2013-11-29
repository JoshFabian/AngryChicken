class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.string :ip_address
      t.datetime :last_seen_at

      t.timestamps
    end
  end
end
