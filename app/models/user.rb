class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :cars
  belongs_to :account_type
  belongs_to :town
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
