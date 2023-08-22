# frozen_string_literal: true

class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, :recoverable, :rememberable,
         :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
  
  has_many :articles

  def jwt_payload
    super
  end
end
