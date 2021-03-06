class Review < ApplicationRecord
  belongs_to :user
  belongs_to :training_spot

  validates :score, presence: true
end
