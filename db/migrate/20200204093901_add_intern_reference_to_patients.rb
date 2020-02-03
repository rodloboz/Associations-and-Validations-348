class AddInternReferenceToPatients < ActiveRecord::Migration[5.1]
  def change
    # add_column table_name, column_name, column_type
    add_reference :patients, :intern, foreign_key: true
  end
end
