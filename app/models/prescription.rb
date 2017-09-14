class Prescription < ApplicationRecord
  belongs_to :product
  belongs_to :user
end
