class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.text :message
      t.string :status, default: 'Pending'
      t.references :rental, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
