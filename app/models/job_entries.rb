class JobEntries < ApplicationRecord
  belongs_to :update_by, class_name: "User", optional: true
  belongs_to :prefectures, class_name: 'Prefecture'
end
