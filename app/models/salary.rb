class Salary < ApplicationRecord
  belongs_to :month_year
  belongs_to :user
end
