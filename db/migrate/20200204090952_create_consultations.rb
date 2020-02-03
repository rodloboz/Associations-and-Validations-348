class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      t.date :appointment_date
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps # created_at and updated_at
    end
  end
end
