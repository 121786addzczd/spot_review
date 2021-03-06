class Review < ApplicationRecord
  belongs_to :user
  belongs_to :training_spot
end
