# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(20)       not null
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  auth_token      :string(32)       not null
#  last_seen_at    :datetime
#  ip_address      :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password

  before_save :ensure_auth_token_exists

  # Generate auth token if it doesn't exist.
  def ensure_auth_token_exists
    if self.auth_token.nil? or self.auth_token.length != 32
      self.auth_token = SecureRandom.hex(32)
    end
  end
end
