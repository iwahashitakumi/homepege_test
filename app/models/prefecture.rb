class Prefecture < ApplicationRecord
  has_many :job_entries
  has_many :shops
end
