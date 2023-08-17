class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.date :date
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
