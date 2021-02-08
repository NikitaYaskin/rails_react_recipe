class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_secure_password
    has_many :recipe

    validates_presence_of :email
    validates_uniqueness_of :email
    validates_presence_of :username
    validates_uniqueness_of :username
end
