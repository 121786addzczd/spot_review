class CreateTrainingSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :training_spots do |t|
      t.string :name

      t.timestamps
    end
  end
end
