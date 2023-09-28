class JobEntries < ApplicationRecord
  belongs_to :update_by, foreign_key: :user_id, optional: true
  belongs_to :prefecture
end
