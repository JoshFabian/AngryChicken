# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string(255)
#  email              :string(255)
#  encrypted_password :string(255)
#  ip_address         :string(255)
#  last_seen_at       :datetime
#  created_at         :datetime
#  updated_at         :datetime
#  auth_token         :string(255)
#

class User < ActiveRecord::Base
end
