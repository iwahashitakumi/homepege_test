class User < ApplicationRecord
  has_many :news
  has_many :articles
  has_many :contacts
  has_many :reqruits
  has_many :shops
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
