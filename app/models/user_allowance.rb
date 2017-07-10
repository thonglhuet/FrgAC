class UserAllowance < ApplicationRecord
  belongs_to :user
  belongs_to :allowance
  belongs_to :month_years
end
