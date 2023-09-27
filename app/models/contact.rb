class Contact < ApplicationRecord
  belongs_to :update_by, class_name: "User", optional: true
end
