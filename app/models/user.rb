class User < ApplicationRecord
  has_many :contacts, foreign_key: 'update_by'
  has_many :job_entries, foreign_key: 'update_by'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
end
