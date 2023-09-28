class Contact < ApplicationRecord
  belongs_to :update_by, foreign_key: :user_id, optional: true
end
