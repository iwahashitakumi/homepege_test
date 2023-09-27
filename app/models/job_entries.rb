class Job_Entries < ApplicationRecord
  belongs_to :prefectures
  belongs_to :update_by, class_name: "User", optional: true
end
