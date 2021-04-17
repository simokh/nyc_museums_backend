class Review < ApplicationRecord
  belongs_to :museum, dependent: :destroy
end
