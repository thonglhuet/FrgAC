class UserInformation < ApplicationRecord
  belongs_to :user_information_settings
  belongs_to :user
  belongs_to :month_year
end
