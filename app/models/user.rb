class User < ApplicationRecord
  has_many :contacts, foreign_key: :user_id, class_name: 'Contacts'
  has_many :job_entries, foreign_key: :user_id, class_name: 'JobEntry'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
end
