class CreateInterns < ActiveRecord::Migration[5.1]
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      t.references :doctor, foreign_key: true # doctor_id
      # creates an index for doctor_id

      t.timestamps # created_at and updated_at
    end
  end
end
