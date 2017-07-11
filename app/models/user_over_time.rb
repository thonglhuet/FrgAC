class UserOverTime < ApplicationRecord
  belongs_to :over_time
  belongs_to :month_years
  belongs_to :user
end
