class User < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true, length: {maximum: 2}

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  ATTRIBUTES_PARAMS = [:email, :name, :password, :password_confirmation].freeze
    
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
