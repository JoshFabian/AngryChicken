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

  # Generate auth token if it doesn't exist.
  before_save :ensure_auth_token_exists
  def ensure_auth_token_exists
    if self.auth_token.nil? or self.auth_token.length != 32
      self.auth_token = SecureRandom.hex(16)
    end
  end

  validates :email, uniqueness: {case_sensitive: false}
  validates :auth_token, uniqueness: true

  # Username validation.
  validates :username,
    presence: true,
    uniqueness: {case_sensitive: false},
    length: {minimum: 3, maximum: 15},
    format: {with: /\A[_A-Za-z0-9]+\z/,
             message: "can only contain alphabets, numbers and underscores"}

  INVALID_USERNAMES = %w(
    admin administrator angrychicken connect dashboard developer developers edit
    favorites feature featured features feed follow followers following index
    javascript json search sysadmin sysadministrator unfollow user users wiki you
  )

  validate :username_starts_with_alphanumeric_and_is_not_reserved
  def username_starts_with_alphanumeric_and_is_not_reserved
    if username[0,1] =~ /[^A-Za-z0-9]/
      errors.add(:username, "must begin with an alphabet or number")
    end
    if INVALID_USERNAMES.include? username.downcase
      errors.add(:username, "is reserved")
    end
  end
end
