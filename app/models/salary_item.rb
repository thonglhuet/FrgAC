class SalaryItem < ApplicationRecord
  belongs_to :salaries
  belongs_to :salary_modules
end
