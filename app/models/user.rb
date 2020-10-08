class User < ApplicationRecord
  acts_as_token_authenticatable
  has_many :contacts, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
