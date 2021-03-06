class TrainingSpot < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
