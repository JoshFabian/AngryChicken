class UsernameUniquenessIndices < ActiveRecord::Migration
  def up
    execute "CREATE UNIQUE INDEX users_lower_username_index ON users (LOWER(username))"
    execute "CREATE UNIQUE INDEX users_lower_email_index ON users (LOWER(email))"
    add_index :users, :auth_token
  end

  def down
    execute "DROP INDEX users_lower_username_index"
    execute "DROP INDEX users_lower_email_index"
    remove_index :users, :auth_token
  end
end
