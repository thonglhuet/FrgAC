class User < ApplicationRecord
  belongs_to :position
  belongs_to :contract
end
