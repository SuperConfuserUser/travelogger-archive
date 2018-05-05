class CreateLegs < ActiveRecord::Migration[5.2]
  def change
    create_table :legs do |t|
      t.references :location, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
