class SalarySetting < ApplicationRecord
  belongs_to :month_year
  belongs_to :contract
end
