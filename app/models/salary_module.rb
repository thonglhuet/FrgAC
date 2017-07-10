class SalaryModule < ApplicationRecord
  belongs_to :parent_id, class_name: SalaryModule.name, optional: true
end
